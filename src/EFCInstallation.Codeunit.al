codeunit 70312 EFCInstallation
{
  Subtype = Install;

  trigger OnInstallAppPerCompany()
  begin
    InsertDefaultDates();
  end;
  
  local procedure InsertDefaultDates()
  var
    FruitVariety: Record EFCFruitVariety;
    Plot: Record EFCPlots;
    Plantation: Record EFCPlantations;

  begin
    if  not FruitVariety.IsEmpty then
      exit;

    InsertDatesTableVariety('VARIETY01', 'Description Variety 01');
    InsertDatesTableVariety('VARIETY02', 'Description Variety 02');

    if  not Plot.IsEmpty then
      exit;

    InsertDatesTablePlot('PLOT01', 'Description plot 01');
    InsertDatesTablePlot('PLOT02', 'Description plot 02');

    if  not Plantation.IsEmpty then
      exit;

    InsertDatesTablePlantation('PLANTATION01', 'PLOT01', 'Description plantation 01', EFCEnumStatePlantations::Open, 10, 'KM');
    InsertDatesTablePlantation('PLANTATION02', 'PLOT01', 'Description plantation 02', EFCEnumStatePlantations::Open, 10, 'KM');
  end;

  local procedure InsertDatesTableVariety(VarietyCode: Code[20]; FruitVarietyDescription: Text[50])
  var
    FruitVariety: Record EFCFruitVariety;
  begin
    Clear(FruitVariety);
    FruitVariety.EFCVarietyCode := VarietyCode;
    FruitVariety.EFCVarietyDescription := FruitVarietyDescription;
    FruitVariety.Insert();
  end;

    local procedure InsertDatesTablePlot(PlotsCode: Code[20]; PlotsDescription: Text[50])
  var
    Plot: Record EFCPlots;
  begin
    Clear(Plot);
    Plot.EFCCode := PlotsCode;
    Plot.EFCDescription := PlotsDescription;
    Plot.Insert();
  end;

  local procedure InsertDatesTablePlantation(PlantationCode: Code[20]; PlotCode: Code[20]; PlantationDescription: Text[50]; StatePlantations: Enum EfcEnumStatePlantations; Surface: Decimal; SurfaceUnitCode: Code[20])
  var
    Plantation: Record EFCPlantations;

  begin
    Clear(Plantation);
    Plantation.EFCPlantationCode := PlantationCode;
    Plantation.EFCPlotCode := PlotCode;
    Plantation.EFCDescriptionPlantation := PlantationDescription;
    Plantation.EFCDischargeDate := CurrentDateTime();
    Plantation.EFCStatePlantations := StatePlantations;
    Plantation.EFCSurface := Surface;
    Plantation.EFCSurfaceUnitCode := SurfaceUnitCode;

    Plantation.Insert();
  end;

  procedure CopiData(PlanationCode: Code[20])
  var
        Plantation: Record EFCPlantations;
        Entry: Record EFCEntrys;
    begin
        // Obtener el registro correspondiente en la tabla TablaOrigen
        Plantation.GET(PlanationCode);
        // Verificar si se cumple la condición
        if Plantation.EFCPlantationCode = Entry.EFCPlantationCode then begin
            // Copiar datos de la tabla origen a la tabla destino
            Entry.EFCVendorCode := Plantation.EFCVendorCode;
            Entry.EFCVarietyCode := Plantation.EFCVarietyCode;
            Entry.MODIFY();
        end;
    end;

}