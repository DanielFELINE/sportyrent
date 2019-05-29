const calculatePrice = () => {
    const form = document.querySelector("#new_booking");
    if (form) {
        form.addEventListener('change', event => {
            let startYear = document.querySelector("#booking_starting_date_1i").value;
            let startMonth = parseInt(document.querySelector("#booking_starting_date_2i").value, 10);
            let startDay = document.querySelector("#booking_starting_date_3i").value;
            let startDate = new Date(startYear, (startMonth - 1), startDay);
            let endYear = document.querySelector("#booking_ending_date_1i").value;
            let endMonth = parseInt(document.querySelector("#booking_ending_date_2i").value, 10);
            let endDay = document.querySelector("#booking_ending_date_3i").value;
            let endDate = new Date(endYear, (endMonth - 1), endDay);
            let oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
            let diffDays = Math.round(Math.abs((startDate.getTime() - endDate.getTime())/(oneDay)));
            document.querySelector("#days_of_rent").innerHTML = `${diffDays + 1}`;
            const rentalPrice = parseInt(document.getElementById("article_price"), 10);
            console.log(rentalPrice);
            const totalPrice = `${(diffDays + 1) * rentalPrice}€ for ${diffDays + 1} day(s) rental`;
            if (endDate < startDate) {
                const errorMessage = `<span class="text-danger">End date can't be before Start date</span>`;
                document.getElementById("total").innerHTML = errorMessage;
            } else {
                document.getElementById("total").innerHTML = totalPrice ;
            };                

        });
    };
};

export { calculatePrice };

// var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
// var firstDate = new Date(2008,01,12);
// var secondDate = new Date(2008,01,22);

// var diffDays = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime())/(oneDay)));```

