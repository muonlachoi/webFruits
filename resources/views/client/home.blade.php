@extends('template.mytemplate')
@section('content')
<div class="fruit">
    <!-- Start Banner -->
    <div class="fruit-banner">
        <div class="fruit-banner__list">
            <div class="fruit-banner__content">
                <h1 class="fruit-banner__title">
                    Cảm Ơn Các Bạn Đã Ủng Hộ Shop Trái Cây Tươi Sạch Tự Nhiên
                </h1>
                <p class="fruit-banner__desc">
                    FRUIT mong rằng sự chân thành và sự thấu hiểu nhu cầu khách hàng, chúng tôi muốn mang đến cho Quý khách những loại trái cây tươi ngon và chất lượng nhất . Từ những loại trái cây nhập khẩu đến những món quà từ trái cây đều được chúng tôi nâng niu, tỉ mẩn thực hiện… hy vọng sẽ giúp lan tỏa sự yêu thương đến với từng gia đình, bạn bè, đồng nghiệp và đối tác của Quý khách.
                </p>
                <button class="fruit-banner__button">XEM THÊM</button>
            </div>
            <div class="fruit-banner__image">
                <img src="{{asset('public/assets/images/Banner.jpg')}}" alt="" class="fruit-banner__images">
            </div>
        </div>
        <div class="fruit-banner__category">
            <div class="fruit-banner__item">
                <p class="fruit-banner__text">
                    <i class="fa-solid fa-truck-fast fruit-banner__icon"></i>
                    FREE SHIP
                </p>
            </div>
            <div class="fruit-banner__item">
                <p class="fruit-banner__text">
                    <i class="fa-solid fa-fire fruit-banner__icon"></i>
                    100% TRÁI CÂY TƯƠI
                </p>
            </div>
            <div class="fruit-banner__item">
                <p class="fruit-banner__text">
                    <i class="fa-solid fa-thumbs-up fruit-banner__icon"></i>
                    BỔ SUNG VITAMIN
                </p>
            </div>
        </div>
    </div>
    <!-- End Banner -->
    <!-- End Header -->
    <!-- Start Products -->
    
    <div class="fruit-product">
        <span class="ms-5 h1" style="text-align:center;padding-top:70px;font-size:40px;display:block">SẢN PHẨM MỚI NHẤT</span>
        <span class="fruit-product__view"><a href="{{url('all-san-pham')}}">Xem tất cả</a></span>
        <div class="fruit-product__list">
            
            @foreach($hanghoa as $item)
            <div class="fruit-product__item">
                <a href="{{url('/chi_tiet_san_pham/'.$item->mahh)}}"><img src="{{$item->anh}}" alt="" class="fruit-product__images"></a>
                <h3 class="fruit-product__name-product">
                    {{$item->tenhh}}
                </h3>
                <p class="fruit-product__price">
                    {{ number_format($item->dongia, 0) }} <sup>đ</sup>
                </p>
                @if (Auth::check())
                <button class="fruit-product__btn"><a href="{{url('add-to-cart/'.$item->mahh)}}">THÊM VÀO GIỎ HÀNG</a></button>
                @else
                <button class="fruit-product__btn" onclick="return confirm('Mời bạn đăng nhập để mua hàng')">THÊM VÀO GIỎ HÀNG</button>
                @endif
            </div>
            
            @endforeach
            
            
        </div>
        <div style="font-size:20px;">
                {{ $hanghoa->links('vendor.pagination.bootstrap-5') }}
        </div>
    </div>
    <!-- End Products -->
    <!-- Start Author -->
    <div class="fruit-author"> 
        <h2 class="fruit-author__title">
            Đóng góp ý kiến
        </h2>
        <p class="fruit-author__text">
            Xem những người mua sắm khác nói gì về chúng tôi
        </p>
        <div class="fruit-author__list">
            <div class="fruit-author__item">
                <h2 class="fruit-author__job">
                    Sinh Viên
                </h2>
                <p class="fruit-author__cmt">
                    “Tôi luôn mua sắm tại FRUIT thông qua ứng dụng dành cho thiết bị di động và họ cung cấp dịch vụ giao hàng nhanh chóng. Nó hoạt động và miễn phí! ”
                </p>
                <div class="fruit-author__information">
                    <img src="{{asset('public/assets/images/author1.png')}}" alt="" class="fruit-author__images">
                    <h5 class="fruit-author__name">Ngô Văn Dũng</h5>
                </div>
            </div>
            <div class="fruit-author__item">
                <h2 class="fruit-author__job">
                    Thạc Sĩ
                </h2>
                <p class="fruit-author__cmt">

                “Tôi luôn mua sắm tại FRUIT thông qua ứng dụng dành cho thiết bị di động và họ cung cấp dịch vụ giao hàng nhanh chóng. Nó hoạt động và miễn phí! ”
                </p>
                <div class="fruit-author__information">
                    <img src="{{asset('public/assets/images/author2.png')}}" alt="" class="fruit-author__images">
                    <h5 class="fruit-author__name">Huỳnh Thái Bảo</h5>
                </div>
            </div>
            <div class="fruit-author__item">
                <h2 class="fruit-author__job">
                    Kĩ Sư
                </h2>
                <p class="fruit-author__cmt">
                “Tôi luôn mua sắm tại FRUIT thông qua ứng dụng dành cho thiết bị di động và họ cung cấp dịch vụ giao hàng nhanh chóng. Nó hoạt động và miễn phí! ”
                </p>
                <div class="fruit-author__information">
                    <img src="{{asset('public/assets/images/author3.png')}}" alt="" class="fruit-author__images">
                    <h5 class="fruit-author__name">Nguyễn Khánh Duy</h5>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <!-- End Author -->
    <!-- Start Sale -->
    <div class="fruit-sale">
        <div class="fruit-sale__list">
            <div class="fruit-sale__image">
                <img src="{{asset('public/assets/images/sales.png')}}" alt="" class="fruit-sale__images">
            </div>
            <div class="fruit-sale__content">
                <h3 class="fruit-sale__title">
                    ƯU ĐÃI
                </h3>
                <p class="fruit-sale__text">
                    Tham gia danh sách gửi thư của chúng tôi để nhận ưu đãi, giảm giá và các tin tức khác thường xuyên bằng cách điền vào e-mail của bạn bên dưới.
                </p>
                <div class="fruit-sale__form">
                    <input id="form__input" type="email" name="click" required class="fruit-sale__form-input" placeholder="Nhập Email">
                    <!-- <label for="form__input" for="" class="fruit-sale__form-label">Search</label>  -->
                    <button class="fruit-sale__btn" name="click"> <a href="">Gửi</a> </button>
                </div>

            </div>
        </div>
    </div>
    <!-- End Sale -->
</div>

@endsection