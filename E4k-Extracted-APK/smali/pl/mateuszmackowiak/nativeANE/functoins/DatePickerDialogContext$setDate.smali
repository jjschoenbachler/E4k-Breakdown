.class public Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;
.super Ljava/lang/Object;
.source "DatePickerDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setDate"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "setDate"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 86
    :try_start_0
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 87
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 89
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 90
    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 91
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    .line 92
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    .line 93
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 94
    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v4

    instance-of v4, v4, Landroid/app/DatePickerDialog;

    if-eqz v4, :cond_0

    .line 95
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    check-cast p2, Landroid/app/DatePickerDialog;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v4

    instance-of v4, v4, Landroid/app/TimePickerDialog;

    if-eqz v4, :cond_1

    .line 98
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v0

    check-cast v0, Landroid/app/TimePickerDialog;

    invoke-virtual {v0, v3, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 103
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 104
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 108
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
