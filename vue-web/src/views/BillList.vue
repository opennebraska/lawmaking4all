<template>
  <div class="pt-4 pb-4">
    <!-- Header -->
    <div class="mb-5">
      <img
        src="https://upload.wikimedia.org/wikipedia/commons/4/4d/Flag_of_Nebraska.svg"
        class="align-top me-1"
        style="max-height: 2rem"
      />
      <span class="h2 lh-1 text-muted">Nebraska State Legislature</span>
    </div>

    <!-- Filter -->
    <div class="form row g-2 mb-4">
      <div class="col">
        <div class="form-group">
          <input
            type="text"
            id="mainFilter"
            placeholder="Filter table"
            class="form-control"
          />
        </div>
      </div>
      <div class="col-auto">
        <div class="form-group">
          <!-- <label for="" class="form-label"></label> -->
          <button type="submit" class="btn btn-secondary px-4">Clear</button>
          <!-- <div class="form-text small"></div> -->
        </div>
      </div>
    </div>
    <!-- Table of bills -->
    <div>
      <table class="table">
        <thead>
          <tr>
            <th>Source</th>
            <th>Bill</th>
            <th>Status</th>
            <th>Latest</th>
            <th>Title</th>
          </tr>
        </thead>
        <tbody>
          <tr></tr>
        </tbody>
      </table>
    </div>
  </div>
</template>
