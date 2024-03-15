fetch("http://localhost/web-assignment-main/backend/api/product/get-pop-hp.php")
  .then((response) => response.json())
  .then((data) => {
    // Filter products with discount and exclude those with category "Slider"
    const filteredProducts = data.product.filter((product) => {
      return product.pro_dis > 0 && product.category_name !== "Slider";
    });

    // Reference to the container where product cards will be added
    const productContainer = document.getElementById("productContainer");

    // Variable to keep track of the number of displayed products
    let displayedProductsCount = 0;

    // Loop through each product and create HTML for product cards
    filteredProducts.forEach((product) => {
      if (displayedProductsCount < 8) {
        const productCard = `
            <div class="col-sm-12 col-md-4 col-lg-3" style="padding-top: 30px">
                <div class="product-card">
                    <div class="discount">
                        <p class="discount-text">${product.pro_dis}%</p>
                    </div>

                    <div class="heart-icon">
                        <i class="far fa-heart like-btn"></i>
                    </div>
                    <a class="product-card-link" href="../frontend/pages/detail-products/detail-product.html">
                        <img class="cart-image" src="http://localhost/web-assignment-main/backend/api/image/${product.pro_img}" alt="${product.pro_name}" />
                        <h3>${product.pro_name}</h3>
                        <p>${product.pro_cal} Calories</p>
                        <h4>${product.pro_price}$</h4>
                    </a>
                    <div class="add-to-cart">
                        <i class="icon fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
            </div>
        `;
        // Append the product card HTML to the container
        productContainer.innerHTML += productCard;
        // Increment the count of displayed products
        displayedProductsCount++;
      } else {
        // Stop looping if 6 products have been displayed
        return;
      }
    });
  })
  .catch((error) => console.error("Error fetching products:", error));
//   this product discount 
fetch("http://localhost/web-assignment-main/backend/api/product/get-dis-hp.php")
  .then((response) => response.json())
  .then((data) => {
    // Filter products with discount and exclude those with category "Slider"
    const filteredProducts = data.product.filter((product) => {
      return product.pro_dis > 0 && product.category_name !== "Slider";
    });

    // Reference to the container where product cards will be added
    const productDiscount = document.getElementById("productDiscount");

    // Variable to keep track of the number of displayed products
    let displayedProductsCount = 0;

    // Loop through each product and create HTML for product cards
    filteredProducts.forEach((product) => {
      if (displayedProductsCount < 8) {
        const productCard = `
            <div class="col-sm-12 col-md-4 col-lg-3" style="padding-top: 30px">
                <div class="product-card">
                    <div class="discount">
                        <p class="discount-text">${product.pro_dis}%</p>
                    </div>

                    <div class="heart-icon">
                        <i class="far fa-heart like-btn"></i>
                    </div>
                    <a class="product-card-link" href="../frontend/pages/detail-products/detail-product.html">
                        <img class="cart-image" src="http://localhost/web-assignment-main/backend/api/image/${product.pro_img}" alt="${product.pro_name}" />
                        <h3>${product.pro_name}</h3>
                        <p>${product.pro_cal} Calories</p>
                        <h4>${product.pro_price}$</h4>
                    </a>
                    <div class="add-to-cart">
                        <i class="icon fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
            </div>
        `;
        // Append the product card HTML to the container
        productDiscount.innerHTML += productCard;
        // Increment the count of displayed products
        displayedProductsCount++;
      } else {
        // Stop looping if 6 products have been displayed
        return;
      }
    });
  })
  .catch((error) => console.error("Error fetching products:", error));
