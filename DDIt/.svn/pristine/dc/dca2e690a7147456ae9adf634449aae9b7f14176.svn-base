<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row gx-3">
            <div class="col-xxl-10 col-xl-9">
              <div class="card" id="ticketsTable" data-list="{&quot;valueNames&quot;:[&quot;client&quot;,&quot;subject&quot;,&quot;status&quot;,&quot;priority&quot;,&quot;agent&quot;],&quot;page&quot;:7,&quot;pagination&quot;:true,&quot;fallback&quot;:&quot;tickets-card-fallback&quot;}">
                <div class="card-header border-bottom border-200 px-0">
                  <div class="d-lg-flex justify-content-between">
                    <div class="row flex-between-center gy-2 px-x1">
                      <div class="col-auto pe-0">
                        <h6 class="mb-0">검색</h6>
                      </div>
                      <div class="col-auto">
                        <form>
                          <div class="input-group input-search-width">
                            <input class="form-control form-control-sm shadow-none search" type="search" placeholder="Search..." aria-label="search">
                            <button class="btn btn-sm btn-outline-secondary border-300 hover-border-secondary"><svg class="svg-inline--fa fa-search fa-w-16 fs-10" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <span class="fa fa-search fs-10"></span> Font Awesome fontawesome.com --></button>
                          </div>
                        </form>
                      </div>
                    </div>
                    <div class="border-bottom border-200 my-3"></div>
                    <div class="d-flex align-items-center justify-content-between justify-content-lg-end px-x1">
                      <button class="btn btn-sm btn-falcon-default d-xl-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#ticketOffcanvas" aria-controls="ticketOffcanvas"><svg class="svg-inline--fa fa-filter fa-w-16" data-fa-transform="shrink-4 down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="filter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5625em;"><g transform="translate(256 256)"><g transform="translate(0, 32)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M487.976 0H24.028C2.71 0-8.047 25.866 7.058 40.971L192 225.941V432c0 7.831 3.821 15.17 10.237 19.662l80 55.98C298.02 518.69 320 507.493 320 487.98V225.941l184.947-184.97C520.021 25.896 509.338 0 487.976 0z" transform="translate(-256 -256)"></path></g></g></svg><!-- <span class="fas fa-filter" data-fa-transform="shrink-4 down-1"></span> Font Awesome fontawesome.com --><span class="ms-1 d-none d-sm-inline-block">Filter</span></button>
                      <div class="bg-300 mx-3 d-none d-lg-block d-xl-none" style="width:1px; height:29px"></div>
                      <div class="d-none" id="table-ticket-actions">
                        <div class="d-flex">
                          <select class="form-select form-select-sm" aria-label="Bulk actions">
                            <option selected="">Bulk actions</option>
                            <option value="Refund">Refund</option>
                            <option value="Delete">Delete</option>
                            <option value="Archive">Archive</option>
                          </select>
                          <button class="btn btn-falcon-default btn-sm ms-2" type="button">Apply</button>
                        </div>
                      </div>
                      <div class="d-flex align-items-center" id="table-ticket-replace-element">
                        <div class="dropdown">
                          <button class="btn btn-sm btn-falcon-default dropdown-toggle dropdown-caret-none" type="button" id="ticket-layout" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent"><span class="d-none d-sm-inline-block d-xl-none d-xxl-inline-block me-1">Card View</span><svg class="svg-inline--fa fa-chevron-down fa-w-14" data-fa-transform="shrink-3 down-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.5625em;"><g transform="translate(224 256)"><g transform="translate(0, 32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M207.029 381.476L12.686 187.132c-9.373-9.373-9.373-24.569 0-33.941l22.667-22.667c9.357-9.357 24.522-9.375 33.901-.04L224 284.505l154.745-154.021c9.379-9.335 24.544-9.317 33.901.04l22.667 22.667c9.373 9.373 9.373 24.569 0 33.941L240.971 381.476c-9.373 9.372-24.569 9.372-33.942 0z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-chevron-down" data-fa-transform="shrink-3 down-1"></span> Font Awesome fontawesome.com --></button>
                          <div class="dropdown-menu dropdown-toggle-item dropdown-menu-end border py-2" aria-labelledby="ticket-layout"><a class="dropdown-item" href="${pageContext.request.contextPath }/resources/public/app/support-desk/table-view.html">Table View</a><a class="dropdown-item active" href="${pageContext.request.contextPath }/resources/public/app/support-desk/card-view.html">Card View</a></div>
                        </div>
                        <button class="btn btn-falcon-default btn-sm mx-2" type="button"><svg class="svg-inline--fa fa-plus fa-w-14" data-fa-transform="shrink-3" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.5em;"><g transform="translate(224 256)"><g transform="translate(0, 0)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-plus" data-fa-transform="shrink-3"></span> Font Awesome fontawesome.com --><span class="d-none d-sm-inline-block d-xl-none d-xxl-inline-block ms-1">그룹 개설</span></button>
                         
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-body p-0">
                  <div class="form-check d-none">
                    <input class="form-check-input" id="checkbox-bulk-card-tickets-select" type="checkbox" data-bulk-select="{&quot;body&quot;:&quot;card-ticket-body&quot;,&quot;actions&quot;:&quot;table-ticket-actions&quot;,&quot;replacedElement&quot;:&quot;table-ticket-replace-element&quot;}">
                  </div>
                  <div class="list bg-body-tertiary p-x1 d-flex flex-column gap-3" id="card-ticket-body"><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-0" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <div class="avatar-name   img-fluid rounded-3" style="width: 90px; height: 70px;"><span>EW</span></div>
                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">Synapse Design #1125</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Emma Watson</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-success false">Recent</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                           
                          <h6 class="mb-0 text-700">작성일 : ㅇㅅㅇ</h6>
                        </div>
                             
                      </div>
                    </div><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-1" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <div class="avatar-name   img-fluid rounded-3" style="width: 90px; height: 70px;"><span>L</span></div>
                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">Change of refund my last buy | Order #125631</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Luke</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-danger false">Overdue</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                            
                          <h6 class="mb-0 text-700">High</h6>
                        </div>
                             
                      </div>
                    </div><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-2" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <img class="img-fluid rounded-3" style="width: 90px; height: 70px;" src="${pageContext.request.contextPath }/resources/public/assets/img/team/1-thumb.png" alt="">

                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">I need your help #2256</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Finley</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-warning false">Remaining</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                             
                          <h6 class="mb-0 text-700">Medium</h6>
                        </div>
                              
                      </div>
                    </div><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-3" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <div class="avatar-name   img-fluid rounded-3" style="width: 90px; height: 70px;"><span>PG</span></div>
                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">I need your help #2256</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Peter Gill</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-info false">Responded</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                              
                          <h6 class="mb-0 text-700">Low</h6>
                        </div>
                              
                      </div>
                    </div><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-4" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <img class="img-fluid rounded-3" style="width: 90px; height: 70px;" src="${pageContext.request.contextPath }/resources/public/assets/img/team/25-thumb.png" alt="">

                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">Contact Froms #3264</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Freya</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-secondary dark__bg-1000">Closed</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                             
                          <h6 class="mb-0 text-700">Medium</h6>
                        </div>
                               
                      </div>
                    </div><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-5" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <div class="avatar-name   img-fluid rounded-3" style="width: 90px; height: 70px;"><span>M</span></div>
                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">I need your help #2256</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Morrison</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-info false">Responded</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                             
                          <h6 class="mb-0 text-700">Medium</h6>
                        </div>
                               
                      </div>
                    </div><div class="bg-white dark__bg-1100 d-md-flex d-xl-inline-block d-xxl-flex align-items-center p-x1 rounded-3 shadow-sm card-view-height">
                      <div class="d-flex align-items-start align-items-sm-center">
                        <div class="form-check me-2 me-xxl-3 mb-0">
                          <input class="form-check-input" type="checkbox" id="card-view-tickets-6" data-bulk-select-row="data-bulk-select-row">
                        </div><a class="d-none d-sm-block" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html">
                          <div class=" avatar avatar-xl avatar-3xl" style="width: 90px; height: 70px;">
                            <div class="avatar-name   img-fluid rounded-3" style="width: 90px; height: 70px;"><span>MB</span></div>
                          </div>
                        </a>
                        <div class="ms-1 ms-sm-3">
                          <p class="fw-semi-bold mb-3 mb-sm-2"><a href="${pageContext.request.contextPath }/resources/public/app/support-desk/tickets-preview.html">I need your help #2256</a></p>
                          <div class="row align-items-center gx-0 gy-2">
                            <div class="col-auto me-2">
                              <h6 class="client mb-0"><a class="text-800 d-flex align-items-center gap-1" href="${pageContext.request.contextPath }/resources/public/app/support-desk/contact-details.html"><svg class="svg-inline--fa fa-user fa-w-14" data-fa-transform="shrink-3 up-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="" style="transform-origin: 0.4375em 0.4375em;"><g transform="translate(224 256)"><g transform="translate(0, -32)  scale(0.8125, 0.8125)  rotate(0 0 0)"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-224 -256)"></path></g></g></svg><!-- <span class="fas fa-user" data-fa-transform="shrink-3 up-1"></span> Font Awesome fontawesome.com --><span>Morrison Banneker</span></a></h6>
                            </div>
                            <div class="col-auto lh-1 me-3"><small class="badge rounded badge-subtle-secondary dark__bg-1000">Closed</small>
                            </div>
                                    
                          </div>
                        </div>
                      </div>
                      <div class="border-bottom mt-4 mb-x1"></div>
                      <div class="d-flex justify-content-between ms-auto">
                        <div class="d-flex align-items-center gap-2 ms-md-4 ms-xl-0" style="width:7.5rem;">
                             
                          <h6 class="mb-0 text-700">Medium</h6>
                        </div>
                               
                      </div>
                    </div></div>
                  <div class="text-center d-none" id="tickets-card-fallback">
                    <p class="fw-bold fs-8 mt-3">No ticket found</p>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="d-flex justify-content-center">
                    <button class="btn btn-sm btn-falcon-default me-1 disabled" type="button" title="Previous" data-list-pagination="prev" disabled=""><svg class="svg-inline--fa fa-chevron-left fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg><!-- <span class="fas fa-chevron-left"></span> Font Awesome fontawesome.com --></button>
                    <ul class="pagination mb-0"><li class="active"><button class="page" type="button" data-i="1" data-page="7">1</button></li><li><button class="page" type="button" data-i="2" data-page="7">2</button></li><li><button class="page" type="button" data-i="3" data-page="7">3</button></li></ul>
                    <button class="btn btn-sm btn-falcon-default ms-1" type="button" title="Next" data-list-pagination="next"><svg class="svg-inline--fa fa-chevron-right fa-w-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <span class="fas fa-chevron-right"></span> Font Awesome fontawesome.com --></button>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xxl-2 col-xl-3">
              <div class="offcanvas offcanvas-end offcanvas-filter-sidebar border-0 bg-body-quaternary h-auto rounded-xl-3" tabindex="-1" id="ticketOffcanvas" aria-labelledby="ticketOffcanvasLabelCard">
                <div class="offcanvas-header d-flex flex-between-center d-xl-none bg-body-tertiary">
                  <h6 class="fs-9 mb-0 fw-semi-bold">Filter</h6>
                  <button class="btn-close text-reset d-xl-none shadow-none" id="ticketOffcanvasLabelCard" type="button" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="card scrollbar shadow-none shadow-show-xl">
                  <div class="card-header bg-body-tertiary d-none d-xl-block">
                    <h6 class="mb-0">Filter</h6>
                  </div>
                  <div class="card-body">
                    <form>
                      <div class="mb-2 mt-n2">
                        <label class="mb-1">Priority</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Urgent</option>
                          <option>High</option>
                          <option>Medium</option>
                          <option>Low</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Source</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Email</option>
                          <option>Phone</option>
                          <option>Forum</option>
                          <option selected="selected">Facebook</option>
                          <option>Twitter</option>
                          <option>Chat</option>
                          <option>Whatsapp</option>
                          <option>Portal</option>
                          <option>Bots</option>
                          <option>External Email</option>
                          <option>Ecommerce</option>
                          <option>Feedback Widget</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Status</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Recent</option>
                          <option>Overdue</option>
                          <option>Closed</option>
                          <option>Remaining</option>
                          <option>Responded</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Group</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>My Group</option>
                          <option>Billing</option>
                          <option>Customer Support</option>
                          <option>Enhancement</option>
                          <option>Unassigned</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Agent</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Anindya</option>
                          <option>Nowrin</option>
                          <option>Khalid</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Type</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Question</option>
                          <option>Incident</option>
                          <option>Problem</option>
                          <option>Feature Request</option>
                          <option>Refund</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Category</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>General Issue</option>
                          <option>Maintenance</option>
                          <option>Engineering</option>
                          <option>Accounts</option>
                          <option>Feedback</option>
                          <option selected="selected">Support</option>
                          <option>Test Helpdesk</option>
                        </select>
                      </div>
                      <div class="mb-2">
                        <label class="mb-1 mt-2">Tags</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Sales</option>
                          <option>Request</option>
                          <option>Complaint</option>
                          <option>Feedback</option>
                          <option>Support</option>
                        </select>
                      </div>
                      <div>
                        <label class="mb-1 mt-2">Subscription</label>
                        <select class="form-select form-select-sm">
                          <option>None</option>
                          <option>Active</option>
                          <option>Inactive</option>
                          <option>Expired</option>
                          <option>Pending</option>
                        </select>
                      </div>
                    </form>
                  </div>
                  <div class="card-footer border-top border-200 py-x1">
                    <button class="btn btn-primary w-100">Update</button>
                  </div>
                </div>
              </div>
            </div>
          </div>