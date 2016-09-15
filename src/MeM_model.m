function MeM_model(inputfile1, inputfile2,inputfile3)
%SCM_Drive_GRN('/Input/MeM_input.txt', '/Output/MeM_output_A.txt', '/Output/MeM_output_M.txt')
%indata1= importdata('./Input/MeM_input.txt');
%str=pwd;
%index_dir=findstr(str,'/');
%dirx=str(1:index_dir(end)-1)
%inputf=strcat(dirx,inputfile);
%indata1= importdata(inputf);
%staticf= strcat(dirx,'staticfile');
%indata2= importdata(staticf);

%indata1= importdata(inputfile);
%indata2= importdata(staticfile);
%GRN_data=indata1.data; 
%Env_data=indata2.data; 

params_data = cellstr(strsplit(char(inputfile3)));
params_data = deblank(params_data);
    
%    for k = 1:length(params_data)
%        if strcmp(params_data{k}, 'CO2')
%            n_CO2 = params_data{k+1};
%        end
%        if strcmp(params_data{k}, 'light')
%            n_light = params_data{k+1};
%        end
%        if strcmp(params_data{k}, 'Temp')
%            n_Temp = params_data{k+1};
%        end
%        if strcmp(params_data{k}, 'GRNC')
%            n_GRNC = params_data{k+1};
%        end
%        if strcmp(params_data{k}, 'GRNT')
%            n_GRNT = params_data{k+1};
%        end        
%    end
    for k = 1:length(params_data)
        if strcmp(params_data{k}, 'GRNT')
            n_CO2 = params_data{k+1};
            n_light = params_data{k+2};
            n_Temp = params_data{k+3};
            n_GRNC = params_data{k+4};
            n_GRNT = params_data{k+5};
        end        
    end

%global outA;
%global outM;
%% outA=strcat(dirx,outputfile_A);
%% outM=strcat(dirx,outputfile_M);

%outA=outputfile_A;
%outM=outputfile_M;

global GRNC;
global GRNT;
GRNC=str2num(n_GRNC);
GRNT=str2num(n_GRNT);

global VfactorC;
global VfactorT;

    input_data = cellstr(strsplit(char(inputfile1)));
    
    for k = 1:length(input_data)
        if strcmp(input_data{k}, 'Glyma.08G175800')
           GRN_data{1} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.02G228700')
           GRN_data{2} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.17G261700')
           GRN_data{3} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.10G066700')
           GRN_data{4} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.04G011900')
           GRN_data{5} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.06G094300')
           GRN_data{6} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.19G106800')
           GRN_data{7} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.10G281400')
           GRN_data{8} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.15G012500')
           GRN_data{9} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.17G228800')
           GRN_data{10} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.13G222300')
           GRN_data{11} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.01G026700')
           GRN_data{12} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.08G214300')
           GRN_data{13} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.08G044100')
           GRN_data{14} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.08G165500')
           GRN_data{15} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.09G015500')
           GRN_data{16} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.01G010200')
           GRN_data{17} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.10G265400')
           GRN_data{18} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.19G046600')
           GRN_data{19} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.19G088400')
           GRN_data{20} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.08G302600')
           GRN_data{21} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.13G062700')
           GRN_data{22} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.10G086600')
           GRN_data{23} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.06G323700')
           GRN_data{24} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.03G027500')
           GRN_data{25} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.15G038100')
           GRN_data{26} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.04G008300')
           GRN_data{27} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.10G059500')
           GRN_data{28} = input_data{k+1};
        end
        if strcmp(input_data{k}, 'Glyma.04G015900')
           GRN_data{29} = input_data{k+1};
        end
    end

%Vfactor=GRN_data(:,10);
for i=1:29
        VfactorC(i)=subs(GRN_data{i});
end


input_dataT = cellstr(strsplit(char(inputfile2)));
    
    for k = 1:length(input_dataT)
        if strcmp(input_dataT{k}, 'Glyma.07g182300')
           GRN_dataT{1} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.12g153000')
           GRN_dataT{2} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.07g258500')
           GRN_dataT{3} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.19g089100')
           GRN_dataT{4} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.08g108900')
           GRN_dataT{5} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.07g028500')
           GRN_dataT{6} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.13g361400')
           GRN_dataT{7} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.10g281400')
           GRN_dataT{8} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.05g141400')
           GRN_dataT{9} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.16g044900')
           GRN_dataT{10} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.04g051200')
           GRN_dataT{11} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.08g302600')
           GRN_dataT{12} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.02g228700')
           GRN_dataT{13} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.10g086600')
           GRN_dataT{14} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.05g025300')
           GRN_dataT{15} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.03g185800')
           GRN_dataT{16} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.07g142700')
           GRN_dataT{17} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.02g222400')
           GRN_dataT{18} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.04g030300')
           GRN_dataT{19} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.04g032600')
           GRN_dataT{20} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.05g237000')
           GRN_dataT{21} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.08g165400')
           GRN_dataT{22} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.09g247900')
           GRN_dataT{23} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.19g243000')
           GRN_dataT{24} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.13g046200')
           GRN_dataT{25} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.11g226900')
           GRN_dataT{26} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.05g127800')
           GRN_dataT{27} = input_dataT{k+1};
        end
        if strcmp(input_dataT{k}, 'Glyma.08g308600')
           GRN_dataT{28} = input_dataT{k+1};
        end

    end

%Vfactor=GRN_data(:,10);
for i=1:28
        VfactorT(i)=subs(GRN_dataT{i});
end

global CO2_Env;
global CO2_cond;
global LI;
global Jmax;
global alfa;
global fc;
global Theta;
global beta;
global Tp;
%Vfactor(i)=subs(GRN_data{i});

CO2_Env=str2num(n_CO2);
CO2_cond = CO2_Env/(3 * 10^4);
LI=str2num(n_light)/30;
Jmax=0.180/30*1000;
alfa=0.85;
fc=0.15;
Theta=0.7;
beta=0.7519;
Tp=str2num(n_Temp);


Begin = 1;
global tglobal;     % The total running time
tglobal = 3000;
global options1 
options1 = odeset('RelTol',1e-4);
time = tglobal;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Global variables used for obtaining flux and concentration data %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     

global PS_OLD_TIME;
global PS_TIME_N;
global PS_VEL;
PS_OLD_TIME = 0;
PS_TIME_N= 0;
PS_VEL = zeros(1,1);

global PR_OLD_TIME;
global PR_TIME_N;
global PR_VEL;
PR_OLD_TIME = 0;
PR_TIME_N = 1;
PR_VEL = zeros(1,1);

global SUCS_OLD_TIME;
global SUCS_TIME_N;
global SUCS_VEL;
global SUCS_CON;

SUCS_OLD_TIME = 0;
SUCS_TIME_N = 1;
SUCS_VEL = zeros(1,3);    % Clean memory
SUCS_CON = zeros(3,1);    % Clean memory
%%%%%%%%%%%%%%%%%%%%%%%%
%   Initialation step %
%%%%%%%%%%%%%%%%%%%%%%%%

global GP; 
GP = 0;
% Begin = 1;
% PS_PRs = zeros(23,1);
CMs = CM_Ini(Begin);

ModelComb = IModelCom;        % Initialize the structure of the model, i.e. Is this model separate or combined with others. 

global PR_PS_com;             % This is a variable indicating whether the PR model is actually need to be combined with PS or not. If 1 then means combined; 0 means not. 
PR_PS_com = 1;

global ATPActive;
ATPActive = 0;

global PSPR_SUCS_com;        % This is a variable indicating whether the PSPR model is actually need to be combined with SUCS or not. If 1 then means combined; 0 means not. 
PSPR_SUCS_com = 1;

%%%%%%%%%%%%%%%%%%%%%%%%
%   Calculation  step %
%%%%%%%%%%%%%%%%%%%%%%%%

CM_Param = 0;

SUCS_Param = zeros(2,1);
SUCS_Param(1) = 1;
SUCS_Param(2) = 1;

PS_PR_Param = 0;



[Tt,d] = ode15s(@CM_mb,[0,time],CMs, options1,PS_PR_Param, SUCS_Param);   

global d_plot;
d_plot=d;

global Tt_plot;
Tt_plot = Tt;


%%%%%%%%%%%%%%%%%%%%%%%
%   output  step. Notice if the graph needs to be displayed, then, the following line should not be commented out     %
%%%%%%%%%%%%%%%%%%%%%%%
CM_OUT(Tt,d);

PSPR_SUCS_com = 0;
IModelCom;
end