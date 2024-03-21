.class public Lcom/myflashlabs/richwebview/Pick;
.super Landroid/app/Activity;
.source "Pick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myflashlabs/richwebview/Pick$DoSomething;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x18f1


# instance fields
.field private _isLolipop:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 167
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    .line 51
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x18f1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    .line 61
    iget-boolean p1, p0, Lcom/myflashlabs/richwebview/Pick;->_isLolipop:Z

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->pickMsg2()Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 65
    new-array p1, p1, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v0

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->pickMsg1()Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, v1

    .line 80
    :goto_1
    iget-boolean p2, p0, Lcom/myflashlabs/richwebview/Pick;->_isLolipop:Z

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->pickMsg2()Landroid/webkit/ValueCallback;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 81
    :cond_3
    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->pickMsg1()Landroid/webkit/ValueCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 83
    :goto_2
    invoke-static {}, Lcom/myflashlabs/richwebview/MyWebChromeClient;->pickMsgNull()V

    const-string p2, "to finish Pick class"

    .line 85
    invoke-direct {p0, p2}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_isLolipop = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/myflashlabs/richwebview/Pick;->_isLolipop:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    .line 88
    iget-boolean p2, p0, Lcom/myflashlabs/richwebview/Pick;->_isLolipop:Z

    if-eqz p2, :cond_5

    if-eqz v1, :cond_4

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "uri = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v1, v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p1, "uri = null"

    .line 96
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uri = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "uri = null"

    .line 107
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    .line 112
    :goto_3
    new-instance p1, Lcom/myflashlabs/richwebview/Pick$DoSomething;

    invoke-direct {p1, p0}, Lcom/myflashlabs/richwebview/Pick$DoSomething;-><init>(Lcom/myflashlabs/richwebview/Pick;)V

    .line 113
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 115
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    .line 27
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/myflashlabs/richwebview/Pick;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_LOLLIPOP"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/myflashlabs/richwebview/Pick;->_isLolipop:Z

    const-string v0, "CHOOSER_FILE_TYPE"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CHOOSER_TITLE"

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x18f1

    .line 37
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/myflashlabs/richwebview/Pick;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    .line 162
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    .line 134
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    .line 141
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "onStart"

    .line 148
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    .line 155
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/Pick;->toTrace(Ljava/lang/String;)V

    return-void
.end method
