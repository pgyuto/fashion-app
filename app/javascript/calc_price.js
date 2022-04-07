function calc_price () {
  // 計算ボタン
  const calcBtn = document.getElementById("calc-btn");
  const calcArea = document.getElementById("calc-area");

  calcBtn.addEventListener('click', () => {
    if (calcArea.getAttribute("style") == "display:block;") {
      calcArea.removeAttribute("style", "display:block;");
    } else {
      calcArea.setAttribute("style", "display:block;");
      
    };
  });

  // 計算機能
  const amountPrice = document.getElementById("amount-price");
  const balancePrice = document.getElementById("balance-price");
  const balancePriceValue = balancePrice.value;
  amountPrice.addEventListener('input', () => {
    const amountPriceValue = amountPrice.value;
    balancePrice.value = (balancePriceValue - amountPriceValue);
  });
};

window.addEventListener('load', calc_price);