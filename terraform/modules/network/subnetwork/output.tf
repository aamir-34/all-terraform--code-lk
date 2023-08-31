output "subnets_name" {
  value       =  values(google_compute_subnetwork.subnetwork).*.name 
  description = "The created subnet resources"
}