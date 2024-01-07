      PROGRAM MatrixDemo
      INTEGER N, I, J
      PARAMETER (N=3)
      INTEGER Toeplitz(N,N), Hankel(N,N)

!     Generate Toeplitz-like matrix
      DO I = 1, N
         DO J = 1, N
            Toeplitz(I, J) = ABS(I - J)
         END DO
      END DO

!     Generate Hankel-like matrix
      DO I = 1, N
         DO J = 1, N
            Hankel(I, J) = I + J - 1
         END DO
      END DO

!     Print Toeplitz-like matrix
      PRINT *, 'Toeplitz-like Matrix:'
      DO I = 1, N
         WRITE (*,100) (Toeplitz(I, J), J=1, N)
      END DO

!     Print Hankel-like matrix
      PRINT *, 'Hankel-like Matrix:'
      DO I = 1, N
         WRITE (*,100) (Hankel(I, J), J=1, N)
      END DO

      STOP
 100  FORMAT(3I4)
      END
