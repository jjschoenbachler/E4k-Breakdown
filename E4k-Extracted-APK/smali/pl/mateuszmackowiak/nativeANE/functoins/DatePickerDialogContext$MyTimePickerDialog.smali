.class Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "DatePickerDialogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTimePickerDialog"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 343
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 344
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIZI)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p6

    move v4, p3

    move v5, p4

    move v6, p5

    .line 339
    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 340
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1

    .line 348
    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "time,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;->freContext:Lcom/adobe/fre/FREContext;

    const-string p3, "change"

    invoke-virtual {p2, p3, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
