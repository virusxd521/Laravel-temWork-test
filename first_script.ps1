$modelsarray = @()
do {
 $input = (Read-Host "Please enter the The name of the model you wish to create")
 if ($input -ne '') {$modelsarray += $input}
}
until ($input -eq '')

foreach ($model in $modelsarray){
	php artisan make:model $model
}
