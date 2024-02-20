<nav class="navbar navbar-light bg-light">
    <div class="container-fluid mx-5 px-5">
        <a class="navbar-brand" href="#">
            <img src="https://e7.pngegg.com/pngimages/772/45/png-clipart-shopping-cart-shopping-centre-icon-shopping-cart-text-retail-thumbnail.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            <span>Shop</span>
        </a>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Add new goods
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="/addItem" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add new goods</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="goodsName" class="form-label">Goods name</label>
                                <input name="name" type="text" class="form-control" id="goodsName">
                            </div>
                            <div class="mb-3">
                                <label for="goodsDescription" class="form-label">Goods description</label>
                                <input name="description" type="text" class="form-control" id="goodsDescription">
                            </div>
                            <div class="mb-3">
                                <label for="goodsPrice" class="form-label">Goods price</label>
                                <input name="price" type="number" class="form-control" id="goodsPrice">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</nav>
