.class Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;
.super Ljava/lang/Object;
.source "DatePickerDialogContext.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnDateChangeListenr"
.end annotation


# instance fields
.field private freContext:Lcom/adobe/fre/FREContext;

.field private hasMinMax:Z

.field private maxDate:J

.field private minDate:J


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;ZJJ)V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-boolean p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->hasMinMax:Z

    .line 516
    iput-wide p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->minDate:J

    .line 517
    iput-wide p5, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->maxDate:J

    .line 518
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 8

    .line 522
    iget-boolean v3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->hasMinMax:Z

    iget-wide v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->minDate:J

    iget-wide v6, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->maxDate:J

    move v0, p2

    move v1, p3

    move v2, p4

    invoke-static/range {v0 .. v7}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$300(IIIZJJ)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 524
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 525
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, p2, :cond_1

    if-ne v2, p3, :cond_1

    if-eq v0, p4, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "day,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 533
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;->freContext:Lcom/adobe/fre/FREContext;

    const-string p3, "change"

    invoke-virtual {p2, p3, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 528
    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/DatePicker;->updateDate(III)V

    :goto_1
    return-void
.end method
