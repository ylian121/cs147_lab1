#include <stdio.h>

#define TILE_SIZE 16

__global__ void matAdd(int dim, const float *A, const float *B, float* C) {

    /********************************************************************
     *
     * Compute C = A + B
     *   where A is a (dim x dim) matrix
     *   where B is a (dim x dim) matrix
     *   where C is a (dim x dim) matrix
     *
     ********************************************************************/

    /*************************************************************************/
    // INSERT KERNEL CODE HERE
    int i = threadIdx.x + blockDim.x * blockIdx.x;
    if(i<dim)
      C[i] = A[i] + B[i];
        
    /*************************************************************************/

}

void basicMatAdd(int dim, const float *A, const float *B, float *C)
{
    // Initialize thread block and kernel grid dimensions ---------------------

    const unsigned int BLOCK_SIZE = TILE_SIZE;
	
    /*************************************************************************/
    //INSERT CODE HERE

    /*************************************************************************/
	
	// Invoke CUDA kernel -----------------------------------------------------

    /*************************************************************************/
    //INSERT CODE HERE
    dim3 DimGrid(ceil(n/256.0, 1, 1);
    dim3 DimBlock(256, 1, 1);
    matAdd<<<DimGrid, DimBlock>>>(A, B, C, dim);
	
    /*************************************************************************/

}

