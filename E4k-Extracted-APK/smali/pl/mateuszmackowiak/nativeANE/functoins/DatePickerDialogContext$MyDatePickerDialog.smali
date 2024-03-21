.class Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "DatePickerDialogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDatePickerDialog"
.end annotation


# instance fields
.field private freContext:Lcom/adobe/fre/FREContext;

.field private hasMinMax:Z

.field private maxDate:J

.field private minDate:J


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIZJJ)V
    .locals 7

    move-object v6, p0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 362
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move v0, p6

    .line 363
    iput-boolean v0, v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->hasMinMax:Z

    move-wide v0, p7

    .line 364
    iput-wide v0, v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->minDate:J

    move-wide/from16 v0, p9

    .line 365
    iput-wide v0, v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->maxDate:J

    move-object v0, p1

    .line 366
    iput-object v0, v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIZJJI)V
    .locals 8

    move-object v7, p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p11

    move v4, p3

    move v5, p4

    move v6, p5

    .line 370
    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    move v0, p6

    .line 371
    iput-boolean v0, v7, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->hasMinMax:Z

    move-wide v0, p7

    .line 372
    iput-wide v0, v7, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->minDate:J

    move-wide/from16 v0, p9

    .line 373
    iput-wide v0, v7, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->maxDate:J

    move-object v0, p1

    .line 374
    iput-object v0, v7, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 8

    .line 380
    iget-boolean v3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->hasMinMax:Z

    iget-wide v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->minDate:J

    iget-wide v6, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->maxDate:J

    move v0, p2

    move v1, p3

    move v2, p4

    invoke-static/range {v0 .. v7}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$300(IIIZJJ)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 382
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 383
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, p2, :cond_1

    if-ne v2, p3, :cond_1

    if-eq v0, p4, :cond_0

    goto :goto_0

    .line 390
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

    .line 391
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;->freContext:Lcom/adobe/fre/FREContext;

    const-string p3, "change"

    invoke-virtual {p2, p3, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 386
    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/DatePicker;->updateDate(III)V

    :goto_1
    return-void
.end method
