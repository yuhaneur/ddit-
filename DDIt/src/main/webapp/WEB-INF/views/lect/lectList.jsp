<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="col-xxl-12 col-xl-12">
              <div class="card mb-3">
                <div class="card-header position-relative">
                  <h5 class="mb-0 mt-1">특강 검색</h5>
                  <div class="bg-holder d-none d-md-block bg-card" style="background-image:url(${pageContext.request.contextPath }/resources/public/assets/img/illustrations/corner-6.png);">
                  </div>
                  <!--/.bg-holder-->

                </div>
                <div class="card-body pt-0 pt-md-3">
                  <div class="row g-3 align-items-center">
                    <div class="col-auto d-xl-none">
                      <button class="btn btn-sm p-0 btn-link position-relative" type="button" data-bs-toggle="offcanvas" data-bs-target="#filterOffcanvas" aria-controls="filterOffcanvas"><svg class="svg-inline--fa fa-filter fa-w-16 fs-9 text-700" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="filter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M487.976 0H24.028C2.71 0-8.047 25.866 7.058 40.971L192 225.941V432c0 7.831 3.821 15.17 10.237 19.662l80 55.98C298.02 518.69 320 507.493 320 487.98V225.941l184.947-184.97C520.021 25.896 509.338 0 487.976 0z"></path></svg><!-- <span class="fas fa-filter fs-9 text-700"></span> Font Awesome fontawesome.com --></button>
                    </div>
                    <div class="col">
                      <form class="position-relative">
                        <input class="form-control form-control-sm search-input lh-1 rounded-2 ps-4" type="search" placeholder="Search..." aria-label="Search">
                        <div class="position-absolute top-50 start-0 translate-middle-y ms-2"><svg class="svg-inline--fa fa-search fa-w-16 text-400 fs-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <span class="fas fa-search text-400 fs-10"></span> Font Awesome fontawesome.com --></div>
                      </form>
                    </div>
                    <div class="col position-sm-relative position-absolute top-0 end-0 me-3 me-sm-0 p-0">
                      <div class="row g-0 g-md-3 justify-content-end">
                        <div class="col-auto">
                          <form class="row gx-2">
                            <div class="col-auto d-none d-lg-block"><small class="fw-semi-bold">정렬</small></div>
                            <div class="col-auto">
                              <select class="form-select form-select-sm" aria-label="Bulk actions">
                                <option value="rating">Rating</option>
                                <option value="review">Review</option>
                                <option value="price">Price</option>
                              </select>
                            </div>
                          </form>
                        </div>
                        <div class="col-auto">
                          <div class="d-flex align-items-center"><small class="fw-semi-bold d-none d-lg-block lh-1">View:</small>
                            <div class="d-flex"><a class="btn btn-link btn-sm text-400 hover-700" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-grid.html" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Course Grid" data-bs-original-title="Course Grid"><svg class="svg-inline--fa fa-th fa-w-16 fs-8" data-fa-transform="down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="th" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5625em;"><g transform="translate(256 256)"><g transform="translate(0, 32)  scale(1, 1)  rotate(0 0 0)"><path fill="currentColor" d="M149.333 56v80c0 13.255-10.745 24-24 24H24c-13.255 0-24-10.745-24-24V56c0-13.255 10.745-24 24-24h101.333c13.255 0 24 10.745 24 24zm181.334 240v-80c0-13.255-10.745-24-24-24H205.333c-13.255 0-24 10.745-24 24v80c0 13.255 10.745 24 24 24h101.333c13.256 0 24.001-10.745 24.001-24zm32-240v80c0 13.255 10.745 24 24 24H488c13.255 0 24-10.745 24-24V56c0-13.255-10.745-24-24-24H386.667c-13.255 0-24 10.745-24 24zm-32 80V56c0-13.255-10.745-24-24-24H205.333c-13.255 0-24 10.745-24 24v80c0 13.255 10.745 24 24 24h101.333c13.256 0 24.001-10.745 24.001-24zm-205.334 56H24c-13.255 0-24 10.745-24 24v80c0 13.255 10.745 24 24 24h101.333c13.255 0 24-10.745 24-24v-80c0-13.255-10.745-24-24-24zM0 376v80c0 13.255 10.745 24 24 24h101.333c13.255 0 24-10.745 24-24v-80c0-13.255-10.745-24-24-24H24c-13.255 0-24 10.745-24 24zm386.667-56H488c13.255 0 24-10.745 24-24v-80c0-13.255-10.745-24-24-24H386.667c-13.255 0-24 10.745-24 24v80c0 13.255 10.745 24 24 24zm0 160H488c13.255 0 24-10.745 24-24v-80c0-13.255-10.745-24-24-24H386.667c-13.255 0-24 10.745-24 24v80c0 13.255 10.745 24 24 24zM181.333 376v80c0 13.255 10.745 24 24 24h101.333c13.255 0 24-10.745 24-24v-80c0-13.255-10.745-24-24-24H205.333c-13.255 0-24 10.745-24 24z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-th fs-8" data-fa-transform="down-1"></span> Font Awesome fontawesome.com --></a><a class="btn btn-link btn-sm px-1 text-700" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-list.html" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Course List" data-bs-original-title="Course List"><svg class="svg-inline--fa fa-list-ul fa-w-16 fs-8" data-fa-transform="down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="list-ul" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5625em;"><g transform="translate(256 256)"><g transform="translate(0, 32)  scale(1, 1)  rotate(0 0 0)"><path fill="currentColor" d="M48 48a48 48 0 1 0 48 48 48 48 0 0 0-48-48zm0 160a48 48 0 1 0 48 48 48 48 0 0 0-48-48zm0 160a48 48 0 1 0 48 48 48 48 0 0 0-48-48zm448 16H176a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h320a16 16 0 0 0 16-16v-32a16 16 0 0 0-16-16zm0-320H176a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h320a16 16 0 0 0 16-16V80a16 16 0 0 0-16-16zm0 160H176a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16h320a16 16 0 0 0 16-16v-32a16 16 0 0 0-16-16z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-list-ul fs-8" data-fa-transform="down-1"></span> Font Awesome fontawesome.com --></a></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course1.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-pen-nib fa-w-16 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="pen-nib" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M136.6 138.79a64.003 64.003 0 0 0-43.31 41.35L0 460l14.69 14.69L164.8 324.58c-2.99-6.26-4.8-13.18-4.8-20.58 0-26.51 21.49-48 48-48s48 21.49 48 48-21.49 48-48 48c-7.4 0-14.32-1.81-20.58-4.8L37.31 497.31 52 512l279.86-93.29a64.003 64.003 0 0 0 41.35-43.31L416 224 288 96l-151.4 42.79zm361.34-64.62l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.75 18.75-49.15 0-67.91z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-pen-nib me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Writing</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-crown fa-w-20 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg="" style="transform-origin: 0.625em 0.5em;"><g transform="translate(320 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5.4 5.1.8 7.7.8 26.5 0 48-21.5 48-48s-21.5-48-48-48z" transform="translate(-320 -256)"></path></g></g></svg><!-- <span class="fas fa-crown me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Top Trainer</span></span><span class="badge rounded-pill badge-subtle-warning"><svg class="svg-inline--fa fa-award fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="award" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M97.12 362.63c-8.69-8.69-4.16-6.24-25.12-11.85-9.51-2.55-17.87-7.45-25.43-13.32L1.2 448.7c-4.39 10.77 3.81 22.47 15.43 22.03l52.69-2.01L105.56 507c8 8.44 22.04 5.81 26.43-4.96l52.05-127.62c-10.84 6.04-22.87 9.58-35.31 9.58-19.5 0-37.82-7.59-51.61-21.37zM382.8 448.7l-45.37-111.24c-7.56 5.88-15.92 10.77-25.43 13.32-21.07 5.64-16.45 3.18-25.12 11.85-13.79 13.78-32.12 21.37-51.62 21.37-12.44 0-24.47-3.55-35.31-9.58L252 502.04c4.39 10.77 18.44 13.4 26.43 4.96l36.25-38.28 52.69 2.01c11.62.44 19.82-11.27 15.43-22.03zM263 340c15.28-15.55 17.03-14.21 38.79-20.14 13.89-3.79 24.75-14.84 28.47-28.98 7.48-28.4 5.54-24.97 25.95-45.75 10.17-10.35 14.14-25.44 10.42-39.58-7.47-28.38-7.48-24.42 0-52.83 3.72-14.14-.25-29.23-10.42-39.58-20.41-20.78-18.47-17.36-25.95-45.75-3.72-14.14-14.58-25.19-28.47-28.98-27.88-7.61-24.52-5.62-44.95-26.41-10.17-10.35-25-14.4-38.89-10.61-27.87 7.6-23.98 7.61-51.9 0-13.89-3.79-28.72.25-38.89 10.61-20.41 20.78-17.05 18.8-44.94 26.41-13.89 3.79-24.75 14.84-28.47 28.98-7.47 28.39-5.54 24.97-25.95 45.75-10.17 10.35-14.15 25.44-10.42 39.58 7.47 28.36 7.48 24.4 0 52.82-3.72 14.14.25 29.23 10.42 39.59 20.41 20.78 18.47 17.35 25.95 45.75 3.72 14.14 14.58 25.19 28.47 28.98C104.6 325.96 106.27 325 121 340c13.23 13.47 33.84 15.88 49.74 5.82a39.676 39.676 0 0 1 42.53 0c15.89 10.06 36.5 7.65 49.73-5.82zM97.66 175.96c0-53.03 42.24-96.02 94.34-96.02s94.34 42.99 94.34 96.02-42.24 96.02-94.34 96.02-94.34-42.99-94.34-96.02z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-award me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Editor’s Choice</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Script Writing Masterclass: Introdution to Industry Cliches</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>
                          </div>
                          <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                            <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                              <div class="mb-lg-4 mt-auto mt-lg-0">
                                <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">특강 정보
                                </h4>
                                <br>
                                <p class="mb-0 fs-12 text-800">교사 : </p>
                                <p class="mb-0 fs-12 text-800">강의 정보 :</p>
                              </div>
                              <div class="mt-3 d-flex flex-lg-column gap-2">
                                  
                                <button class="btn btn-md btn-primary fs-10"><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course2.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-thumbtack fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="thumbtack" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M298.028 214.267L285.793 96H328c13.255 0 24-10.745 24-24V24c0-13.255-10.745-24-24-24H56C42.745 0 32 10.745 32 24v48c0 13.255 10.745 24 24 24h42.207L85.972 214.267C37.465 236.82 0 277.261 0 328c0 13.255 10.745 24 24 24h136v104.007c0 1.242.289 2.467.845 3.578l24 48c2.941 5.882 11.364 5.893 14.311 0l24-48a8.008 8.008 0 0 0 .845-3.578V352h136c13.255 0 24-10.745 24-24-.001-51.183-37.983-91.42-85.973-113.733z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-thumbtack me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Misc.</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Composition in Comics: Easy to Read Between Panels</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$39.99
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">92,603 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course3.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-brush fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="brush" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M352 0H32C14.33 0 0 14.33 0 32v224h384V32c0-17.67-14.33-32-32-32zM0 320c0 35.35 28.66 64 64 64h64v64c0 35.35 28.66 64 64 64s64-28.65 64-64v-64h64c35.34 0 64-28.65 64-64v-32H0v32zm192 104c13.25 0 24 10.74 24 24 0 13.25-10.75 24-24 24s-24-10.75-24-24c0-13.26 10.75-24 24-24z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-brush me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Design</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-hashtag fa-w-14 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="hashtag" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.5em;"><g transform="translate(224 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M440.667 182.109l7.143-40c1.313-7.355-4.342-14.109-11.813-14.109h-74.81l14.623-81.891C377.123 38.754 371.468 32 363.997 32h-40.632a12 12 0 0 0-11.813 9.891L296.175 128H197.54l14.623-81.891C213.477 38.754 207.822 32 200.35 32h-40.632a12 12 0 0 0-11.813 9.891L132.528 128H53.432a12 12 0 0 0-11.813 9.891l-7.143 40C33.163 185.246 38.818 192 46.289 192h74.81L98.242 320H19.146a12 12 0 0 0-11.813 9.891l-7.143 40C-1.123 377.246 4.532 384 12.003 384h74.81L72.19 465.891C70.877 473.246 76.532 480 84.003 480h40.632a12 12 0 0 0 11.813-9.891L151.826 384h98.634l-14.623 81.891C234.523 473.246 240.178 480 247.65 480h40.632a12 12 0 0 0 11.813-9.891L315.472 384h79.096a12 12 0 0 0 11.813-9.891l7.143-40c1.313-7.355-4.342-14.109-11.813-14.109h-74.81l22.857-128h79.096a12 12 0 0 0 11.813-9.891zM261.889 320h-98.634l22.857-128h98.634l-22.857 128z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-hashtag me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Best Seller</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Advanced Design Tools for Modern Designs</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$69.50
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">11,000 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course4.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-thumbtack fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="thumbtack" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M298.028 214.267L285.793 96H328c13.255 0 24-10.745 24-24V24c0-13.255-10.745-24-24-24H56C42.745 0 32 10.745 32 24v48c0 13.255 10.745 24 24 24h42.207L85.972 214.267C37.465 236.82 0 277.261 0 328c0 13.255 10.745 24 24 24h136v104.007c0 1.242.289 2.467.845 3.578l24 48c2.941 5.882 11.364 5.893 14.311 0l24-48a8.008 8.008 0 0 0 .845-3.578V352h136c13.255 0 24-10.745 24-24-.001-51.183-37.983-91.42-85.973-113.733z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-thumbtack me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Misc.</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-crown fa-w-20 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg="" style="transform-origin: 0.625em 0.5em;"><g transform="translate(320 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5.4 5.1.8 7.7.8 26.5 0 48-21.5 48-48s-21.5-48-48-48z" transform="translate(-320 -256)"></path></g></g></svg><!-- <span class="fas fa-crown me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Top Trainer</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Comic Page Layout: Analysing The Classics</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$49.50
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">32,106 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course5.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-brush fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="brush" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M352 0H32C14.33 0 0 14.33 0 32v224h384V32c0-17.67-14.33-32-32-32zM0 320c0 35.35 28.66 64 64 64h64v64c0 35.35 28.66 64 64 64s64-28.65 64-64v-64h64c35.34 0 64-28.65 64-64v-32H0v32zm192 104c13.25 0 24 10.74 24 24 0 13.25-10.75 24-24 24s-24-10.75-24-24c0-13.26 10.75-24 24-24z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-brush me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Design</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-crown fa-w-20 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg="" style="transform-origin: 0.625em 0.5em;"><g transform="translate(320 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5.4 5.1.8 7.7.8 26.5 0 48-21.5 48-48s-21.5-48-48-48z" transform="translate(-320 -256)"></path></g></g></svg><!-- <span class="fas fa-crown me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Top Trainer</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">J. H. Williams III</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Abstract Painting: Zero to Mastery in Traditional Medium</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$69.50
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">2,304 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course6.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-palette fa-w-16 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="palette" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M204.3 5C104.9 24.4 24.8 104.3 5.2 203.4c-37 187 131.7 326.4 258.8 306.7 41.2-6.4 61.4-54.6 42.5-91.7-23.1-45.4 9.9-98.4 60.9-98.4h79.7c35.8 0 64.8-29.6 64.9-65.3C511.5 97.1 368.1-26.9 204.3 5zM96 320c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32zm32-128c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32zm128-64c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32zm128 64c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-palette me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Painting</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-crown fa-w-20 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg="" style="transform-origin: 0.625em 0.5em;"><g transform="translate(320 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5.4 5.1.8 7.7.8 26.5 0 48-21.5 48-48s-21.5-48-48-48z" transform="translate(-320 -256)"></path></g></g></svg><!-- <span class="fas fa-crown me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Top Trainer</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Inking: Choosing Between Analog vs Digital</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$39.99
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">9,312 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course7.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-pen-nib fa-w-16 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="pen-nib" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M136.6 138.79a64.003 64.003 0 0 0-43.31 41.35L0 460l14.69 14.69L164.8 324.58c-2.99-6.26-4.8-13.18-4.8-20.58 0-26.51 21.49-48 48-48s48 21.49 48 48-21.49 48-48 48c-7.4 0-14.32-1.81-20.58-4.8L37.31 497.31 52 512l279.86-93.29a64.003 64.003 0 0 0 41.35-43.31L416 224 288 96l-151.4 42.79zm361.34-64.62l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.75 18.75-49.15 0-67.91z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-pen-nib me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Writing</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-hashtag fa-w-14 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="hashtag" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.5em;"><g transform="translate(224 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M440.667 182.109l7.143-40c1.313-7.355-4.342-14.109-11.813-14.109h-74.81l14.623-81.891C377.123 38.754 371.468 32 363.997 32h-40.632a12 12 0 0 0-11.813 9.891L296.175 128H197.54l14.623-81.891C213.477 38.754 207.822 32 200.35 32h-40.632a12 12 0 0 0-11.813 9.891L132.528 128H53.432a12 12 0 0 0-11.813 9.891l-7.143 40C33.163 185.246 38.818 192 46.289 192h74.81L98.242 320H19.146a12 12 0 0 0-11.813 9.891l-7.143 40C-1.123 377.246 4.532 384 12.003 384h74.81L72.19 465.891C70.877 473.246 76.532 480 84.003 480h40.632a12 12 0 0 0 11.813-9.891L151.826 384h98.634l-14.623 81.891C234.523 473.246 240.178 480 247.65 480h40.632a12 12 0 0 0 11.813-9.891L315.472 384h79.096a12 12 0 0 0 11.813-9.891l7.143-40c1.313-7.355-4.342-14.109-11.813-14.109h-74.81l22.857-128h79.096a12 12 0 0 0 11.813-9.891zM261.889 320h-98.634l22.857-128h98.634l-22.857 128z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-hashtag me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Best Seller</span></span><span class="badge rounded-pill badge-subtle-warning"><svg class="svg-inline--fa fa-award fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="award" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M97.12 362.63c-8.69-8.69-4.16-6.24-25.12-11.85-9.51-2.55-17.87-7.45-25.43-13.32L1.2 448.7c-4.39 10.77 3.81 22.47 15.43 22.03l52.69-2.01L105.56 507c8 8.44 22.04 5.81 26.43-4.96l52.05-127.62c-10.84 6.04-22.87 9.58-35.31 9.58-19.5 0-37.82-7.59-51.61-21.37zM382.8 448.7l-45.37-111.24c-7.56 5.88-15.92 10.77-25.43 13.32-21.07 5.64-16.45 3.18-25.12 11.85-13.79 13.78-32.12 21.37-51.62 21.37-12.44 0-24.47-3.55-35.31-9.58L252 502.04c4.39 10.77 18.44 13.4 26.43 4.96l36.25-38.28 52.69 2.01c11.62.44 19.82-11.27 15.43-22.03zM263 340c15.28-15.55 17.03-14.21 38.79-20.14 13.89-3.79 24.75-14.84 28.47-28.98 7.48-28.4 5.54-24.97 25.95-45.75 10.17-10.35 14.14-25.44 10.42-39.58-7.47-28.38-7.48-24.42 0-52.83 3.72-14.14-.25-29.23-10.42-39.58-20.41-20.78-18.47-17.36-25.95-45.75-3.72-14.14-14.58-25.19-28.47-28.98-27.88-7.61-24.52-5.62-44.95-26.41-10.17-10.35-25-14.4-38.89-10.61-27.87 7.6-23.98 7.61-51.9 0-13.89-3.79-28.72.25-38.89 10.61-20.41 20.78-17.05 18.8-44.94 26.41-13.89 3.79-24.75 14.84-28.47 28.98-7.47 28.39-5.54 24.97-25.95 45.75-10.17 10.35-14.15 25.44-10.42 39.58 7.47 28.36 7.48 24.4 0 52.82-3.72 14.14.25 29.23 10.42 39.59 20.41 20.78 18.47 17.35 25.95 45.75 3.72 14.14 14.58 25.19 28.47 28.98C104.6 325.96 106.27 325 121 340c13.23 13.47 33.84 15.88 49.74 5.82a39.676 39.676 0 0 1 42.53 0c15.89 10.06 36.5 7.65 49.73-5.82zM97.66 175.96c0-53.03 42.24-96.02 94.34-96.02s94.34 42.99 94.34 96.02-42.24 96.02-94.34 96.02-94.34-42.99-94.34-96.02z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-award me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Editor’s Choice</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Character Design Masterclass: Your First Supervillain</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$99.90
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">292,603 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course8.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-pen-nib fa-w-16 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="pen-nib" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M136.6 138.79a64.003 64.003 0 0 0-43.31 41.35L0 460l14.69 14.69L164.8 324.58c-2.99-6.26-4.8-13.18-4.8-20.58 0-26.51 21.49-48 48-48s48 21.49 48 48-21.49 48-48 48c-7.4 0-14.32-1.81-20.58-4.8L37.31 497.31 52 512l279.86-93.29a64.003 64.003 0 0 0 41.35-43.31L416 224 288 96l-151.4 42.79zm361.34-64.62l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.75 18.75-49.15 0-67.91z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-pen-nib me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Writing</span></span><span class="badge rounded-pill badge-subtle-warning"><svg class="svg-inline--fa fa-award fa-w-12 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="award" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg="" style="transform-origin: 0.375em 0.5em;"><g transform="translate(192 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M97.12 362.63c-8.69-8.69-4.16-6.24-25.12-11.85-9.51-2.55-17.87-7.45-25.43-13.32L1.2 448.7c-4.39 10.77 3.81 22.47 15.43 22.03l52.69-2.01L105.56 507c8 8.44 22.04 5.81 26.43-4.96l52.05-127.62c-10.84 6.04-22.87 9.58-35.31 9.58-19.5 0-37.82-7.59-51.61-21.37zM382.8 448.7l-45.37-111.24c-7.56 5.88-15.92 10.77-25.43 13.32-21.07 5.64-16.45 3.18-25.12 11.85-13.79 13.78-32.12 21.37-51.62 21.37-12.44 0-24.47-3.55-35.31-9.58L252 502.04c4.39 10.77 18.44 13.4 26.43 4.96l36.25-38.28 52.69 2.01c11.62.44 19.82-11.27 15.43-22.03zM263 340c15.28-15.55 17.03-14.21 38.79-20.14 13.89-3.79 24.75-14.84 28.47-28.98 7.48-28.4 5.54-24.97 25.95-45.75 10.17-10.35 14.14-25.44 10.42-39.58-7.47-28.38-7.48-24.42 0-52.83 3.72-14.14-.25-29.23-10.42-39.58-20.41-20.78-18.47-17.36-25.95-45.75-3.72-14.14-14.58-25.19-28.47-28.98-27.88-7.61-24.52-5.62-44.95-26.41-10.17-10.35-25-14.4-38.89-10.61-27.87 7.6-23.98 7.61-51.9 0-13.89-3.79-28.72.25-38.89 10.61-20.41 20.78-17.05 18.8-44.94 26.41-13.89 3.79-24.75 14.84-28.47 28.98-7.47 28.39-5.54 24.97-25.95 45.75-10.17 10.35-14.15 25.44-10.42 39.58 7.47 28.36 7.48 24.4 0 52.82-3.72 14.14.25 29.23 10.42 39.59 20.41 20.78 18.47 17.35 25.95 45.75 3.72 14.14 14.58 25.19 28.47 28.98C104.6 325.96 106.27 325 121 340c13.23 13.47 33.84 15.88 49.74 5.82a39.676 39.676 0 0 1 42.53 0c15.89 10.06 36.5 7.65 49.73-5.82zM97.66 175.96c0-53.03 42.24-96.02 94.34-96.02s94.34 42.99 94.34 96.02-42.24 96.02-94.34 96.02-94.34-42.99-94.34-96.02z" transform="translate(-192 -256)"></path></g></g></svg><!-- <span class="fas fa-award me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Editor’s Choice</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Character Design Masterclass: Your First Superhero</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$69.99
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">90,304 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <article class="card mb-3 overflow-hidden">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-md-4 col-lg-3">
                      <div class="hoverbox h-md-100"><a class="text-decoration-none" href="${pageContext.request.contextPath }/resources/public/assets/video/beach.mp4" data-gallery="attachment-bg"><img class="h-100 w-100 object-fit-cover" src="${pageContext.request.contextPath }/resources/public/assets/img/elearning/courses/course9.png" alt=""></a>
                      </div>
                    </div>
                    <div class="col-md-8 col-lg-9 p-x1">
                      <div class="row g-0 h-100">
                        <div class="col-lg-8 col-xxl-9 d-flex flex-column pe-x1">
                          <div class="d-flex gap-2 flex-wrap mb-3"><span class="badge rounded-pill badge-subtle-primary"><svg class="svg-inline--fa fa-pen-nib fa-w-16 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="pen-nib" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(256 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M136.6 138.79a64.003 64.003 0 0 0-43.31 41.35L0 460l14.69 14.69L164.8 324.58c-2.99-6.26-4.8-13.18-4.8-20.58 0-26.51 21.49-48 48-48s48 21.49 48 48-21.49 48-48 48c-7.4 0-14.32-1.81-20.58-4.8L37.31 497.31 52 512l279.86-93.29a64.003 64.003 0 0 0 41.35-43.31L416 224 288 96l-151.4 42.79zm361.34-64.62l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.75 18.75-49.15 0-67.91z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-pen-nib me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Writing</span></span><span class="badge rounded-pill badge-subtle-success"><svg class="svg-inline--fa fa-crown fa-w-20 me-1" data-fa-transform="shrink-4" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg="" style="transform-origin: 0.625em 0.5em;"><g transform="translate(320 256)"><g transform="translate(0, 0)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5.4 5.1.8 7.7.8 26.5 0 48-21.5 48-48s-21.5-48-48-48z" transform="translate(-320 -256)"></path></g></g></svg><!-- <span class="fas fa-crown me-1" data-fa-transform="shrink-4"></span> Font Awesome fontawesome.com --><span>Top Trainer</span></span>
                          </div>
                          <h5 class="fs-9"><a href="${pageContext.request.contextPath }/resources/public/app/e-learning/trainer-profile.html">Bill Finger</a></h5>
                          <h4 class="mt-3 mt-sm-0 fs-9 fs-lg-8"><a class="text-900" href="${pageContext.request.contextPath }/resources/public/app/e-learning/course/course-details.html">Character Design Masterclass: Your First Sidekick</a></h4>
                          <p class="fs-10 mt-2 d-none d-lg-block">Great Script Writers never avoid cliche moments, rather play with it. In this course, legendary Mr. Finger will explain the process in great details.</p>

                        </div>
                        <div class="col-lg-4 col-xxl-3 mt-4 mt-lg-0">
                          <div class="h-100 rounded border-lg border-1 d-flex flex-lg-column justify-content-between p-lg-3">
                            <div class="mb-lg-4 mt-auto mt-lg-0">
                              <h4 class="mb-1 lh-1 fs-7 text-warning d-flex align-items-end">$69.99
                                <del class="ms-1 fs-10 text-500 mb-1">$139.90</del>
                              </h4>
                              <p class="mb-0 fs-12 text-800">66,304 Learners Enrolled</p>
                            </div>
                            <div class="mt-3 d-flex flex-lg-column gap-2">
                                
                              <button class="btn btn-md btn-primary fs-10"><svg class="svg-inline--fa fa-cart-plus fa-w-18" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="cart-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M504.717 320H211.572l6.545 32h268.418c15.401 0 26.816 14.301 23.403 29.319l-5.517 24.276C523.112 414.668 536 433.828 536 456c0 31.202-25.519 56.444-56.824 55.994-29.823-.429-54.35-24.631-55.155-54.447-.44-16.287 6.085-31.049 16.803-41.548H231.176C241.553 426.165 248 440.326 248 456c0 31.813-26.528 57.431-58.67 55.938-28.54-1.325-51.751-24.385-53.251-52.917-1.158-22.034 10.436-41.455 28.051-51.586L93.883 64H24C10.745 64 0 53.255 0 40V24C0 10.745 10.745 0 24 0h102.529c11.401 0 21.228 8.021 23.513 19.19L159.208 64H551.99c15.401 0 26.816 14.301 23.403 29.319l-47.273 208C525.637 312.246 515.923 320 504.717 320zM408 168h-48v-40c0-8.837-7.163-16-16-16h-16c-8.837 0-16 7.163-16 16v40h-48c-8.837 0-16 7.163-16 16v16c0 8.837 7.163 16 16 16h48v40c0 8.837 7.163 16 16 16h16c8.837 0 16-7.163 16-16v-40h48c8.837 0 16-7.163 16-16v-16c0-8.837-7.163-16-16-16z"></path></svg><!-- <span class="fas fa-cart-plus"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-lg-inline">Add to Cart</span></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <div class="card">
                <div class="card-body">
                  <div class="row g-3 flex-center justify-content-md-between">
                    <div class="col-auto">
                      <form class="row gx-2">
                        <div class="col-auto"><small>Show:</small></div>
                        <div class="col-auto">
                          <select class="form-select form-select-sm" aria-label="Show courses">
                            <option selected="selected" value="9">9</option>
                            <option value="20">20</option>
                            <option value="50">50</option>
                          </select>
                        </div>
                      </form>
                    </div>
                    <div class="col-auto">
                      <button class="btn btn-falcon-default btn-sm me-2" type="button" disabled="disabled" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Prev" data-bs-original-title="Prev"><svg class="svg-inline--fa fa-chevron-left fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg><!-- <span class="fas fa-chevron-left"></span> Font Awesome fontawesome.com --></button><a class="btn btn-sm btn-falcon-default text-primary me-2" href="#!">1</a><a class="btn btn-sm btn-falcon-default me-2" href="#!">2</a><a class="btn btn-sm btn-falcon-default me-2" href="#!"> <svg class="svg-inline--fa fa-ellipsis-h fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ellipsis-h" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M328 256c0 39.8-32.2 72-72 72s-72-32.2-72-72 32.2-72 72-72 72 32.2 72 72zm104-72c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72zm-352 0c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72z"></path></svg><!-- <span class="fas fa-ellipsis-h"></span> Font Awesome fontawesome.com --></a><a class="btn btn-sm btn-falcon-default me-2" href="#!">303</a>
                      <button class="btn btn-falcon-default btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Next" data-bs-original-title="Next"><svg class="svg-inline--fa fa-chevron-right fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <span class="fas fa-chevron-right"></span> Font Awesome fontawesome.com --></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>    
