.class public Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;
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
    name = "isShowing"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "isShowing"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 169
    :try_start_0
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 170
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2

    return-object p2

    :cond_0
    const/4 p2, 0x0

    .line 172
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 174
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
