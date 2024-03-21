.class public Lcom/adobe/air/Automation;
.super Ljava/lang/Object;
.source "Automation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Lcom/adobe/air/AIRWindowSurfaceView;IIIZZZ)Z
    .locals 14

    move-object v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    if-eqz p5, :cond_1

    const/4 v2, 0x2

    :cond_1
    if-eqz p6, :cond_2

    or-int/lit8 v2, v2, 0x1

    :cond_2
    if-eqz p7, :cond_3

    or-int/lit8 v1, v2, 0x4

    move v9, v1

    goto :goto_0

    :cond_3
    move v9, v2

    :goto_0
    const/4 v12, 0x1

    .line 48
    :try_start_0
    new-instance v13, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, v13

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    if-nez v10, :cond_4

    .line 51
    invoke-virtual {p1, v11, v13}, Lcom/adobe/air/AIRWindowSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    if-ne v10, v12, :cond_5

    .line 55
    invoke-virtual {p1, v11, v13}, Lcom/adobe/air/AIRWindowSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Automation"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JP] dispatchKeyEvent caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v12
.end method

.method public dispatchTouchEvent(Lcom/adobe/air/AIRWindowSurfaceView;IFFFIFFZ[FI)Z
    .locals 9

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p11

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Automation"

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JP] dispatchTouchEvent caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
