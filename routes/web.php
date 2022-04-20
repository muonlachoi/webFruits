<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\nhapLoaiController;
use App\Http\Controllers\hangHoaController;
use App\Http\Controllers\khachhangController;
use App\Http\Controllers\TrangChuController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\danhMucController;
use App\Http\Controllers\productController;
use App\Http\Controllers\lienheController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/home');
});
Route::get('/lien-he', function () {
    return view('client/lienhe');
})->name('lien-he');
Route::get('/gioi-thieu', function () {
    return view('client/gioithieu');
})->name('gioi-thieu');
Route::get('/homeAdmin', function () {
    return view('admin/pages/admin');
})->name('home-admin');

Route::get('/home', [TrangChuController::class, 'listhanghoa'])->name('home');
Route::get('/', [HomeController::class, 'index']);

Auth::routes();



Route::get('/admin', function () {
    return view('admin/pages/admin');
})->middleware('checkadmin::class')->name('admin');

//hàng hóa

    Route::get('/hang-hoa', [hangHoaController::class, 'DataHangHoa'])->middleware('checkadmin::class')->name('hang-hoa');

    Route::post('/nhap-hang-hoa', [hangHoaController::class, 'NhapHang'])->middleware('checkadmin::class')->name('nhap-hang-hoa');

    Route::post('/xoa-hang-hoa', [hangHoaController::class, 'DeleteHangHoa'])->middleware('checkadmin::class')->name('xoa-hang-hoa');

    Route::get('/cap-nhat-hang-hoa/{mahh}', [hangHoaController::class, 'EditHanghoa'])->middleware('checkadmin::class')->name('cap-nhat-hang-hoa');

    Route::post('/cap-nhat-hang-hoa/{mahh}', [hangHoaController::class, 'CapNhatHangHoa'])->middleware('checkadmin::class');
//loai hang

    Route::get('/loai-hang', [nhapLoaiController::class, 'DataLoaiHang'])->middleware('checkadmin::class')->name('loai-hang');

    Route::post('/nhap-loai-hang', [nhapLoaiController::class, 'NhapLoai'])->middleware('checkadmin::class')->name('nhap-loai-hang');

    Route::post('/xoa-loai-hang', [nhapLoaiController::class, 'DeleteLoai'])->middleware('checkadmin::class')->name('xoa-loai-hang');

    Route::get('/cap-nhat-loai-hang/{id}', [nhapLoaiController::class, 'edit'])->middleware('checkadmin::class')->name('cap-nhat-loai-hang');

    Route::post('/cap-nhat-loai-hang/{id}', [nhapLoaiController::class, 'CapNhatLoai'])->middleware('checkadmin::class');
//danh mục

    Route::get('/danh-muc', [danhMucController::class, 'DataDanhMuc'])->middleware('checkadmin::class')->name('danh-muc');

    Route::post('/nhap-danh-muc-hang', [danhMucController::class, 'NhapDanhMuc'])->middleware('checkadmin::class')->name('nhap-danh-muc-hang');

    Route::post('/xoa-danh-muc', [danhMucController::class, 'XoaDanhMuc'])->middleware('checkadmin::class')->name('xoa-danh-muc');

    Route::get('/cap-nhat-danh-muc-hang/{id}', [danhMucController::class, 'SuaDanhMuc'])->middleware('checkadmin::class')->name('cap-nhat-danh-muc-hang');

    Route::post('/cap-nhat-danh-muc-hang/{id}', [danhMucController::class, 'CapNhatDanhMuc'])->middleware('checkadmin::class');
//quản lý khách hàng
Route::get('/khach-hang', [khachhangController::class, 'listkhachhang'])->middleware('checkadmin::class')->name('khach-hang');
Route::post('/xoa-khach-hang', [khachhangController::class, 'xoakhachhang'])->middleware('checkadmin::class')->name('xoa-khach-hang');;
//sản phẩm 
Route::get('/san-pham', function () {
    return view('client/product');
})->name('san-pham');
Route::get('/all-san-pham', [productController::class, 'Allsanpham'])->name('all-san-pham');
Route::get('/qua-tang', [productController::class, 'Allquatang'])->name('qua-tang');
Route::get('/trai-cay', [productController::class, 'Alltraicay'])->name('trai-cay');
Route::get('/trai-cay-tuoi', [productController::class, 'traicaytuoi'])->name('trai-cay-tuoi');
Route::get('/trai-cay-kho', [productController::class, 'traicaykho'])->name('trai-cay-kho');
Route::get('/gio-trai-cay', [productController::class, 'giotraicay'])->name('gio-trai-cay');
Route::get('/hop-qua-trai-cay', [productController::class, 'hopquatraicay'])->name('hop-qua-trai-cay');
Route::get('/khay-trai-cay', [productController::class, 'khaytraicay'])->name('khay-trai-cay');
//chi tiết sản phẩm
Route::get('chi_tiet_san_pham/{mahh}', [productController::class, 'getchitiet'])->name('chi-tiet-san-pham');
Route::get('search', [productController::class, 'getSearch']);
//cart
Route::get('cart', [productController::class, 'cart'])->name('cart');
Route::get('add-to-cart/{mahh}', [productController::class, 'addToCart'])->name('add-to-cart');
Route::patch('update-cart', [productController::class, 'update'])->name('update-cart');
Route::post('remove-from-cart', [productController::class, 'remove'])->name('remove-from-cart');
Route::get('thanh-toan/{total}', [productController::class, 'thanhtoan'])->name('thanh-toan');
