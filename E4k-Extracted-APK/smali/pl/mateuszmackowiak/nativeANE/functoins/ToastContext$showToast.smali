.class public Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext$showToast;
.super Ljava/lang/Object;
.source "ToastContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "showToast"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "Toast"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext$showToast;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :try_start_0
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 53
    array-length v3, p2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    aget-object v3, p2, v4

    if-eqz v3, :cond_0

    .line 54
    aget-object v3, p2, v4

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 55
    :goto_0
    array-length v4, p2

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 56
    aget-object v1, p2, v5

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    .line 57
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    const/4 v5, 0x4

    .line 58
    aget-object p2, p2, v5

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p2

    goto :goto_1

    :cond_1
    move-object v1, v0

    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 61
    :goto_1
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 63
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v5, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v4, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 67
    :cond_2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v1, "error"

    .line 69
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method
