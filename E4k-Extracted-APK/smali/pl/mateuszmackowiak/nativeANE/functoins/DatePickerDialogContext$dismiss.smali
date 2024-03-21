.class public Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;
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
    name = "dismiss"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "dismiss"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const/4 v0, 0x0

    .line 148
    :try_start_0
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 149
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p2

    const-string v1, "nativeDialog_closed"

    .line 150
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 152
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {p2, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$102(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    .line 153
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {p2, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "error"

    .line 156
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
