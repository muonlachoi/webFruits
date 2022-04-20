<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\hanghoa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class productController extends Controller
{
    public function Allsanpham(Request $request){
        if($request->orderby){
            $orderby=$request->orderby;
            switch($orderby){
                case 'gia_max':
                    $sanpham=DB::table('hanghoa')->orderBy('dongia','DESC')->paginate(200);  
                    return view('client/Allproduct',['dulieu'=>$sanpham,'title'=>'Sản Phẩm']);
                    break;
                case 'gia_min':
                    $sanpham=DB::table('hanghoa')->orderBy('dongia','ASC')->paginate(200);  
                    return view('client/Allproduct',['dulieu'=>$sanpham,'title'=>'Sản Phẩm']);
                    break; 
            }
        }
        // $sanpham=DB::select('select * from hanghoa order by dongia asc');
        $sanpham=DB::table('hanghoa')->orderBy('mahh','desc')->paginate(12);  
        return view('client/Allproduct',['dulieu'=>$sanpham,'title'=>'Sản Phẩm']);
        
    }
    public function Allquatang(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','quà tặng')
            ->paginate(12);
            
        // $sanpham=DB::select('select * from hanghoa a, loai b, danhmuc c where a.maloai=b.maloai and b.mamuc=c.mamuc and c.tenmuc="quà tặng"');
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Quà Tặng']);
    }
    public function Alltraicay(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','trái cây')
            ->paginate(12);
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Trái Cây']);
    }
    public function traicaykho(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','trái cây')
            ->where('loai.tenloai','trái cây khô')
            ->paginate(12);
        // $sanpham=DB::select('select * from hanghoa a, loai b, danhmuc c where a.maloai=b.maloai and b.mamuc=c.mamuc and c.tenmuc="trái cây" and b.tenloai="trái cây khô"');
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Trái Cây Khô']);
    }
    public function traicaytuoi(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','trái cây')
            ->where('loai.tenloai','trái cây tươi')
            ->paginate(12);
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Trái Cây Tươi']);
    }
    public function giotraicay(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','quà tặng')
            ->where('loai.tenloai','giỏ trái cây')
            ->paginate(12);
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Giỏ Trái Cây']);
    }
    public function hopquatraicay(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','quà tặng')
            ->where('loai.tenloai','hộp quà trái cây')
            ->paginate(12);
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Hộp Quà Trái Cây']);
    }
    public function khaytraicay(){
        $sanpham = DB::table('hanghoa')
            ->join('loai', 'hanghoa.maloai', '=', 'loai.maloai')
            ->join('danhmuc', 'danhmuc.mamuc', '=', 'loai.mamuc')
            ->select('*')
            ->where('danhmuc.tenmuc','quà tặng')
            ->where('loai.tenloai','khay trái cây')
            ->paginate(12);
        return view('client/product',['dulieu'=>$sanpham,'title'=>'Khay Trái Cây']);
    }
    public function getchitiet($mahh){
        $sanpham=DB::select('select a.*,b.tenloai from hanghoa a,loai b where a.maloai=b.maloai and a.mahh=?',[$mahh]);
        return view('client/chitietsanpham',['dulieu'=>$sanpham]);
    }
    public function getSearch(Request $req){
        $sanpham=DB::table('hanghoa')->orderBy('dongia','asc')->where('tenhh','like','%'.$req->key.'%')->orWhere('dongia',$req->key)->get();
        return view('client/search',['sanpham'=>$sanpham]);
    }

    //cart
    public function cart()
    {
        return view('client/cart');
    }
  
    /**
     * Write code on Method
     *
     * @return response()
     */
    public function addToCart($mahh)
    {
        $sanpham = DB::table('hanghoa')->where('mahh','=',$mahh)->first();
          
        $cart = session()->get('cart', []);
  
        if(isset($cart[$mahh])) {
            $cart[$mahh]['quantity']++;
        } else {
            $cart[$mahh] = [
                "mahh"=>$sanpham->mahh,
                "tenhh" => $sanpham->tenhh,
                "quantity" => 1,
                "dongia" => $sanpham->dongia,
                "anh" => $sanpham->anh
            ];
        }
          
        session()->put('cart', $cart);
        return redirect()->back()->with('success', 'Sản phẩm đã được thêm vào giỏ hàng!');
    }
  
    /**
     * Write code on Method
     *
     * @return response()
     */
    public function update(Request $request)
    {
        if($request->mahh && $request->quantity){
            $cart = session()->get('cart');
            $cart[$request->mahh]["quantity"] = $request->quantity;
            session()->put('cart', $cart);
            session()->flash('success', 'Giỏ hàng update thành công');
        }
    }
  
    /**
     * Write code on Method
     *
     * @return response()
     */
    public function remove(Request $request)
    {
        $mahh=$request->input('mahh');
        if($mahh) {
            $cart = session()->get('cart');
            if(isset($cart[$mahh])) {
                unset($cart[$mahh]);
                session()->put('cart', $cart);
            }
            session()->flash('success', 'Sản phẩm đã được xóa');
        }
        return view('client/cart');
    }
    public function thanhtoan($total){
        
        if(session('cart')!==null){
            $ngaydat=date('Y/m/d');
            $makh=Auth::id();
            DB::insert('insert into hoadon(makh,ngaydat,tongtien) values(?,?,?)',[$makh,$ngaydat,$total]);
            session()->forget('cart');
            return redirect('/home')->with('success', 'Thanh toán thành công!');
        }
    }
}
