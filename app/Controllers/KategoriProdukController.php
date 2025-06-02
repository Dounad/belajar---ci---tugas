<?php

namespace App\Controllers;

use App\Models\ProductCategoryModel;

class KategoriProdukController extends BaseController
{
    protected $productcategory; 
    protected $validation;


    function __construct()
    {
        $this->productcategory = new ProductCategoryModel();
    }

    public function index()
    {
        $productcategory = $this->productcategory->findAll();
        $data['productcategory'] = $productcategory;

        return view('v_kategoriproduk', $data);
    }

    public function create()
{
    $dataForm = [
        'nama_kategori' => $this->request->getPost('nama_kategori'),
        'deskripsi' => $this->request->getPost('deskripsi'),
        'created_at' => date("Y-m-d H:i:s")
    ];

    $this->productcategory->insert($dataForm);

    return redirect('kategoriproduk')->with('success', 'Data Berhasil Ditambah');
} 

    public function edit($id)
{
    $dataProdukCategory = $this->productcategory->find($id);

    $dataForm = [
        'nama_kategori' => $this->request->getPost('nama_kategori'),
        'deskripsi' => $this->request->getPost('deskripsi'),
        'updated_at' => date("Y-m-d H:i:s")
    ];

    
    $this->productcategory->update($id, $dataForm);

    return redirect('kategoriproduk')->with('success', 'Data Berhasil Diubah');
}

public function delete($id)
{
    $dataProdukCategory = $this->productcategory->find($id);

    $this->productcategory->delete($id);

    return redirect('kategoriproduk')->with('success', 'Data Berhasil Dihapus');
}
}