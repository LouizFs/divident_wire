# Pin npm packages by running ./bin/importmap

pin "application"


pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"

pin_all_from "app/javascript/controllers", under: "controllers"

# cdn
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.js"
pin "fontawesome", to: "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
pin "apexcharts", to: "https://cdn.jsdelivr.net/npm/apexcharts"
pin "amcharts", to: "https://cdn.amcharts.com/lib/5/index.js"

# libs

pin "apexchart", to: "libs/apexchart/index.js"
pin "chartjs", to: "libs/chartjs/index.js"
pin "amchart", to: "libs/amcharts/index.js"
pin "datatable", to: "libs/datatable/index.js"
pin "datepicker", to: "libs/datepicker/index.js"
pin "echart", to: "libs/echart/index.js"
pin "editor", to: "libs/editor/index.js"
pin "fullcalender", to: "libs/fullcalender/index.js"
pin "jvectormap", to: "libs/jvectormap/index.js"
pin "multistep",  to: "libs/multistep/index.js"
pin "sweetalert", to:  "libs/sweetalert/index.js"
pin "main", to: "main.js"
