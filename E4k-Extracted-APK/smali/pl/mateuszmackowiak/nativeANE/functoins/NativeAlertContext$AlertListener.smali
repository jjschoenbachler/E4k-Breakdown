.class Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;
.super Ljava/lang/Object;
.source "NativeAlertContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlertListener"
.end annotation


# instance fields
.field dialogAlert:Landroid/content/DialogInterface;

.field freContext:Lcom/adobe/fre/FREContext;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 123
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->dialogAlert:Landroid/content/DialogInterface;

    const-string v0, "NativeAlertContext"

    const-string v1, "onClick"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    :goto_1
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->freContext:Lcom/adobe/fre/FREContext;

    if-nez v0, :cond_3

    const-string p1, "NativeAlertContext"

    const-string p2, "onClick freContext is null "

    .line 133
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "NativeAlertContext"

    const-string p2, "onClick dialog is null "

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->value:Ljava/lang/String;

    .line 142
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;

    invoke-direct {p2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
