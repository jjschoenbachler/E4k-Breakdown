.class public Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;
.super Ljava/lang/Object;
.source "NativeDialogsExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static final CANCELED:Ljava/lang/String; = "nativeDialog_canceled"

.field public static final CLOSED:Ljava/lang/String; = "nativeDialog_closed"

.field public static final DATE_CHANGED:Ljava/lang/String; = "change"

.field public static final ERROR_EVENT:Ljava/lang/String; = "error"

.field public static final LIST_CHANGE:Ljava/lang/String; = "nativeListDialog_change"

.field public static final OPENED:Ljava/lang/String; = "nativeDialog_opened"

.field private static TAG:Ljava/lang/String; = "[NativeDialogs]"


# instance fields
.field public context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebbuger(Lcom/adobe/fre/FREContext;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 74
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "debug"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    const/4 p0, 0x1

    .line 75
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 77
    sget-object v1, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 3

    .line 40
    sget-object v0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension.createContext extId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "log.tag.DatePickerDialogContext"

    const-string v1, "VERBOSE"

    .line 41
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ProgressContext"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    :cond_0
    const-string v0, "ToastContext"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    :cond_1
    const-string v0, "TextInputDialogContext"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    :cond_2
    const-string v0, "ListDialogContext"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    :cond_3
    const-string v0, "ListDialogContext"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    :cond_4
    const-string v0, "DatePickerDialogContext"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    :cond_5
    const-string v0, "PickerDialogContext"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1

    .line 65
    :cond_6
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-direct {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;-><init>()V

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 2

    .line 87
    sget-object v0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->TAG:Ljava/lang/String;

    const-string v1, "Extension.dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 99
    sget-object v0, Lpl/mateuszmackowiak/nativeANE/NativeDialogsExtension;->TAG:Ljava/lang/String;

    const-string v1, "Extension.initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
