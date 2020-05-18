variable "AWS_REGION" {
  default = "eu-west-3"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "LAB1_PUBLIC_KEY" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiKBnk/4V9kMVLBjrRUgo+xdIhZXOCBVAqXAa+Wl4A2jQ5V11s/f953YDTroZ+cmpvQE1VB0mq8nL5JcCoNvdeOIcPvXN7Si0f1nTIK2VNxmTvXL/HLMqpE9ZWoGXOaPjbvVWO3GMfc/AR2DKCkzFDprJOquviHzdVDnoUnio0mnoVAbcGd/eQhI1uZ8ahV8YhiyNAHplrzeuZ86ysgj21a5fedzq9g1ccUPu/qs8GXDsB7RqOWYAn4JMJqOvmpaQgmE2ohjI2e6u/xHIbkVuT6cQTseLwX0AibFbHnVNDsWw+W/Azx8wtntRiInn2IcI4S42tw8XIIFluYAMnDzgqNd8tFzcdberVINwu3wYjqHz6eAXrTDutBDIgouVJZ6QrDejEMqKySiHf+6MN8DJFTJnOq/rb7rHSRwG87rkbl4zoLMo7ko0os/+QS1pJsTQ5eOSWC2JflR4C1fEnXbbk5JT8GAnkESrCbjm8xoorHPhiF3pNh+L8dxLr/E2EyMk= pierrick@pop-os"
}

variable "machines_lab" {
  type = list(object({
    name = string
    public_key = string
  }))
  default = [
      {
          name = "lab1"
          public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiKBnk/4V9kMVLBjrRUgo+xdIhZXOCBVAqXAa+Wl4A2jQ5V11s/f953YDTroZ+cmpvQE1VB0mq8nL5JcCoNvdeOIcPvXN7Si0f1nTIK2VNxmTvXL/HLMqpE9ZWoGXOaPjbvVWO3GMfc/AR2DKCkzFDprJOquviHzdVDnoUnio0mnoVAbcGd/eQhI1uZ8ahV8YhiyNAHplrzeuZ86ysgj21a5fedzq9g1ccUPu/qs8GXDsB7RqOWYAn4JMJqOvmpaQgmE2ohjI2e6u/xHIbkVuT6cQTseLwX0AibFbHnVNDsWw+W/Azx8wtntRiInn2IcI4S42tw8XIIFluYAMnDzgqNd8tFzcdberVINwu3wYjqHz6eAXrTDutBDIgouVJZ6QrDejEMqKySiHf+6MN8DJFTJnOq/rb7rHSRwG87rkbl4zoLMo7ko0os/+QS1pJsTQ5eOSWC2JflR4C1fEnXbbk5JT8GAnkESrCbjm8xoorHPhiF3pNh+L8dxLr/E2EyMk= pierrick@pop-os"
      },
      {
          name = "lab2"
          public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDKhtDKtCxATKzO9pfviEGGp4kP1B8pjw4Szw2Jvf5f9R7P4mLpDA1TMk5NGSrfdNWqwdPwi4K/MDIE55HFRxsAh2+6qFCYzjkd5OH3Z4Qot5LeLvxy0CCJeAadQhGITGZVP6wIGbLbI3lOIMOiR5HL3LLeaqv9swPQVIVgRZ88x4kFGVzA8W5ObwTvKY2XAuVqcCx0nx/HMaS5rz3tgbXnV/auNNkNyWXZ8TlbSDQf1cKmCIXSsoDxqR3cM/+MglpBZLzNeRREfBi7VClFoqwa2N2yDB0j0VssNl8Jf/bbAL4uYCvajYVdbfhBNBA2MAoME1t6c0zzQiNIjkB+5H85/kPwXI6TBL6blhMhZbPtPAMkfQE/FtEWm9RE4zk6v1Z4Et5nPLw6LEgEjAT7iN3gUA83oKk9l3Rg2DUwH6Z1AZPPqq+kbHYpQSDqCW3Hsy3JOcdnHJPpqoKObRwSMyIV5A6Ycu2ZOLEIT6/wfA7cXEJKpsy77MAzTFXkzYWNIr0= pierrick@pop-os"
      }
  ]
}