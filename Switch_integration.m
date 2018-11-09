% Copyrigth to Chittaranjan Hens, Uzi Harush and Baruch Barzel's lab
function Switch_integration(modeltype)
switch modeltype
case 1
        Integration_R_1dynamics;
     case 2
        Integration_R_2dynamics;
        case 3
        Integration_NNdynamics;
           case 4
        Integration_PDdynamics;
         case 5
        Integration_Mdynamics;
           case 6
        Integration_Edynamics;
end