
<?php

class Employee
{
    public string $lastname;
    public string $firstname;
    public string $hiringDate;
    public string $role;
    public int $wage;
    public string $department;

    public function __construct($lastname, $firstname, $hiringDate, $role, $wage, $department)
    {
        $this->lastname = $lastname;
        $this->firstname = $firstname;
        $this->hiringDate = $hiringDate;
        $this->role = $role;
        $this->wage = $wage;
        $this->department = $department;
     
    }

    public function getHiringYears() {
        $hiring = new DateTime($this->hiringDate);
        $now = new DateTime();
        $test = $now->diff($hiring);
        return $test->format('%y');
    }

    public function getAnnualBonus() {
        $hiringYears = $this->getHiringYears();
        $baseBonus = $this->wage * 1000 * 0.05;
        $seniorityBonus = $hiringYears * ($this->wage * 1000 *0.02);
        $annualBonus = $baseBonus + $seniorityBonus;
        return $annualBonus;
    }

    public function verifyVacationVouchers() {
        if($this->getHiringYears() > 1){
            return true;
        }
        else{
            return false;
        }
    }

    public function verifyChristmasVouchers() {
        if(count($this->children)>0){
            $totalVoucher = 0;

            foreach ($this->children as $key => $child) {
                if ($child <= 10) {
                    $totalVoucher += 20;
                }
                else if ($child > 10 && $child <= 15) {
                    $totalVoucher += 30;
                }
                else if ($child > 15 && $child <= 18) {
                    $totalVoucher += 50;
                }
            }

            return $totalVoucher == 0 ?  false : $totalVoucher;
        }
        else{
            return false;
        }
    }

}