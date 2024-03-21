.class public Lcom/adobe/air/AndroidActivityWrapper;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$DebugMode;,
        Lcom/adobe/air/AndroidActivityWrapper$PlaneID;,
        Lcom/adobe/air/AndroidActivityWrapper$ActivityState;,
        Lcom/adobe/air/AndroidActivityWrapper$FlashPermission;,
        Lcom/adobe/air/AndroidActivityWrapper$PermissionStatus;
    }
.end annotation


# static fields
.field private static final ADOBE_COM:Ljava/lang/String; = "adobe.com"

.field private static final ASPECT_RATIO_ANY:I = 0x3

.field private static final ASPECT_RATIO_LANDSCAPE:I = 0x2

.field private static final ASPECT_RATIO_PORTRAIT:I = 0x1

.field public static final IMAGE_PICKER_REQUEST_CODE:I = 0x2

.field private static final INVOKE_EVENT_OPEN_URL:I = 0x1

.field private static final INVOKE_EVENT_STANDARD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidActivityWrapper"

.field public static final STILL_PICTURE_REQUEST_CODE:I = 0x3

.field public static final VIDEO_CAPTURE_REQUEST_CODE:I = 0x4

.field public static final WEBVIEW_UPLOAD_FILE_CHOOSER_CODE:I = 0x5

.field private static final WWW_ADOBE_COM:Ljava/lang/String; = "www.adobe.com"

.field private static mIsAndroidTV:Z = false

.field private static sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper; = null

.field private static sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager; = null

.field private static sApplicationLaunched:Z = false

.field private static sDepthAndStencil:Z = false

.field private static sEntryPoint:Lcom/adobe/air/Entrypoints; = null

.field private static sGamePreviewHost:Ljava/lang/String; = ""

.field private static sHasCaptiveRuntime:Z

.field private static sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

.field private static sIsDebugger:Z

.field private static sIsSwfPreviewMode:Z

.field private static sRuntimeLibrariesLoaded:Z


# instance fields
.field private debuggerPort:I

.field private keyGuardManager:Landroid/app/KeyguardManager;

.field private mActivateEventPending:Z

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field private mActivityStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

.field private mContainsVideo:Z

.field private mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

.field private mDeclaredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayWaitingDialog:Z

.field private mExtraArgs:Ljava/lang/String;

.field private mFullScreenSetFromMetaData:Z

.field private mHardKeyboardHidden:I

.field private mHardKeyboardType:I

.field private mInputEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInvokeEventPendingFromOnCreate:Z

.field private mIsADL:Z

.field private mIsDebuggerMode:Z

.field private mIsFullScreen:Z

.field private mLibCorePath:Ljava/lang/String;

.field private mOrientationManager:Lcom/adobe/air/OrientationManager;

.field private mRGB565Override:Z

.field private mRootDir:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowDebuggerDialog:Z

.field private mTargetSdkVersion:I

.field private mXmlPath:Ljava/lang/String;

.field private m_activity:Landroid/app/Activity;

.field private m_application:Landroid/app/Application;

.field private m_cameraView:Lcom/adobe/air/AndroidCameraView;

.field private m_flashEGL:Lcom/adobe/air/FlashEGL;

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

.field private m_newActivityLock:Ljava/util/concurrent/locks/Lock;

.field private m_overlaysLayout:Landroid/widget/RelativeLayout;

.field private m_planeBreakCascade:Z

.field private m_planeCascadeInit:Z

.field private m_planeCascadeStep:I

.field private m_planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private m_runtimeContext:Landroid/content/Context;

.field private m_skipKickCascade:Z

.field private m_splashscreenImageView:Landroid/widget/ImageView;

.field private m_videoView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 100
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

    .line 101
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    .line 102
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    .line 103
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 104
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    .line 105
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_splashscreenImageView:Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 107
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 108
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    .line 109
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    .line 113
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 114
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    const/4 v2, 0x2

    .line 115
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 116
    iput v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 117
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    .line 118
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    const/4 v2, -0x1

    .line 119
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    .line 120
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 121
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 122
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    .line 123
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    .line 125
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    .line 126
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    .line 127
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    .line 129
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    .line 146
    iput v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mTargetSdkVersion:I

    .line 147
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDeclaredPermissions:Ljava/util/List;

    .line 149
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 151
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    .line 152
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    .line 179
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    .line 180
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x1

    .line 183
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    .line 184
    new-instance v3, Lcom/adobe/air/DebuggerSettings;

    invoke-direct {v3}, Lcom/adobe/air/DebuggerSettings;-><init>()V

    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    .line 187
    sget-object v3, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 542
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    .line 544
    iput v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    .line 545
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 546
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    .line 547
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 365
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 366
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    .line 367
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    .line 368
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    .line 377
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->LoadRuntimeLibraries()V

    const-string v0, "keyguard"

    .line 379
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 2

    const/4 v0, 0x0

    .line 244
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 6

    .line 274
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "air.com.crestron.andros"

    .line 278
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 279
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 281
    aget-object v4, v1, v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported application:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 288
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    return-object p0

    .line 295
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    .line 296
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "com.adobe.air"

    .line 303
    invoke-static {p1}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    .line 305
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/adobe/air/AndroidActivityWrapper;->sIsDebugger:Z

    .line 306
    sget-object p1, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    if-nez p1, :cond_3

    .line 307
    new-instance p1, Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 308
    :cond_3
    invoke-static {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isAndroidTV(Landroid/app/Activity;)Z

    move-result p0

    sput-boolean p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsAndroidTV:Z

    .line 309
    sget-object p0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object p0
.end method

.method public static GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .line 384
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method public static GetDepthAndStencilForGamePreview()Z
    .locals 1

    .line 405
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    return v0
.end method

.method public static GetHasCaptiveRuntime()Z
    .locals 1

    .line 389
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    return v0
.end method

.method public static GetIsAndroidTV()Z
    .locals 1

    .line 394
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->mIsAndroidTV:Z

    return v0
.end method

.method public static IsGamePreviewMode()Z
    .locals 1

    .line 399
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    return v0
.end method

.method private LaunchApplication(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 15

    move-object v12, p0

    .line 1081
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-eqz p6, :cond_4

    .line 1099
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "args"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, " "

    .line 1102
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1103
    aget-object v2, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :try_start_1
    aget-object v4, v3, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1106
    :try_start_2
    array-length v5, v3

    if-lt v5, v1, :cond_1

    .line 1108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v3, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :cond_1
    move-object/from16 v1, p5

    .line 1110
    :goto_0
    :try_start_3
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v0, v0, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object/from16 v2, p3

    move-object/from16 v4, p4

    goto :goto_1

    :catch_0
    move-object/from16 v2, p3

    :catch_1
    move-object/from16 v4, p4

    :catch_2
    :goto_1
    move-object/from16 v1, p5

    :catch_3
    :cond_3
    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_4

    .line 1128
    :cond_4
    :try_start_4
    sget-boolean v3, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v3, :cond_d

    .line 1131
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v4, "?"

    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    const-string v4, "?"

    .line 1138
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    .line 1140
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_2
    if-ge v6, v4, :cond_c

    aget-object v8, v3, v6

    const-string v9, "="

    .line 1144
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "depthAndStencil"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "="

    .line 1146
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    .line 1148
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1151
    sput-boolean v13, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    goto :goto_3

    .line 1156
    :cond_5
    sput-boolean v2, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    goto :goto_3

    :cond_6
    const-string v9, "="

    .line 1159
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "autoorients"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "="

    .line 1161
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    .line 1163
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1166
    invoke-virtual {p0, v13}, Lcom/adobe/air/AndroidActivityWrapper;->setAutoOrients(Z)V

    goto :goto_3

    .line 1171
    :cond_7
    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidActivityWrapper;->setAutoOrients(Z)V

    goto :goto_3

    :cond_8
    const-string v9, "="

    .line 1174
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "aspectratio"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "="

    .line 1176
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "portrait"

    .line 1178
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const-string v9, "landscape"

    .line 1182
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v7, 0x2

    goto :goto_3

    :cond_a
    const-string v9, "any"

    .line 1186
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v7, 0x3

    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_c
    if-eq v7, v5, :cond_d

    .line 1202
    invoke-virtual {p0, v7}, Lcom/adobe/air/AndroidActivityWrapper;->setAspectRatio(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_d
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1218
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 1220
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-nez v0, :cond_e

    new-instance v0, Lcom/adobe/air/Entrypoints;

    invoke-direct {v0}, Lcom/adobe/air/Entrypoints;-><init>()V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    .line 1221
    :cond_e
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v5, p2

    move-object v8, v14

    move-object v9, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/adobe/air/Entrypoints;->EntryMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 1223
    invoke-static {v14}, Lcom/adobe/air/AndroidIdleState;->GetIdleStateManager(Landroid/content/Context;)Lcom/adobe/air/AndroidIdleState;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    .line 1225
    sput-boolean v13, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    return-void
.end method

.method private LoadRuntimeLibraries()V
    .locals 3

    .line 1737
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1741
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibSTLPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1743
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1744
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    nop

    .line 1752
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z

    if-nez v0, :cond_2

    if-nez v2, :cond_1

    :try_start_2
    const-string v0, "c++_shared"

    .line 1756
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_1
    const-string v0, "Core"

    .line 1757
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1758
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-void
.end method

.method private SetVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isSurfaceValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 1556
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSetVisible(Z)V

    goto :goto_0

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1562
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSetVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static ShouldShowGamePreviewWatermark()Z
    .locals 3

    .line 410
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    const-string v2, "www.adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    const-string v2, "adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 416
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 420
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private SignalNewActivityCreated()V
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2175
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 2176
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private afterOnCreate()V
    .locals 6

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 969
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 975
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 978
    new-instance v3, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {v3, v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 979
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_splashscreenImageView:Landroid/widget/ImageView;

    .line 984
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    if-nez v3, :cond_1

    .line 985
    new-instance v3, Lcom/adobe/air/AndroidCameraView;

    invoke-direct {v3, v0, p0}, Lcom/adobe/air/AndroidCameraView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 1000
    :cond_1
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    if-eqz v3, :cond_2

    .line 1001
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1005
    :cond_2
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1006
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v3, "containsVideo"

    .line 1010
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 1012
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    .line 1015
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getVideoView()Lcom/adobe/flashruntime/shared/VideoView;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    .line 1016
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1020
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1021
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_splashscreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1023
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 1024
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1028
    :cond_4
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1042
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eq v1, v3, :cond_5

    .line 1044
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 1045
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->onWindowFocusChanged(Z)V

    .line 1049
    :cond_5
    iget-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    if-nez v1, :cond_6

    .line 1051
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->setFullScreenFromMetaData()V

    .line 1053
    :cond_6
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    .line 1057
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getIsFullScreen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1059
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 1063
    :cond_7
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 1064
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 1067
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    .line 1068
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1, v2, v3}, Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1069
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1071
    invoke-static {v0}, Lcom/adobe/flashplayer/HDMIUtils;->initHelper(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private callActivityResultListeners(IILandroid/content/Intent;)V
    .locals 3

    .line 2153
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2161
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2163
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private callActivityStateListeners()V
    .locals 4

    .line 2087
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2092
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2094
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-interface {v2, v3}, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;->onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private callActivityStateListeners(Landroid/content/res/Configuration;)V
    .locals 3

    .line 2107
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2112
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2114
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-interface {v2, p1}, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private callInputEventListeners(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 2021
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2026
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v3, :cond_2

    .line 2028
    :try_start_1
    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;

    invoke-interface {v4, p1}, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :catch_1
    :cond_3
    return v3
.end method

.method private callInputEventListeners(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2043
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2048
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v3, :cond_2

    .line 2050
    :try_start_1
    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;

    invoke-interface {v4, p1}, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :catch_1
    :cond_3
    return v3
.end method

.method private checkForDebuggerAndLaunchDialog()V
    .locals 8

    .line 1782
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_9

    .line 1784
    new-instance v0, Lcom/adobe/air/ResourceFileManager;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceFileManager;-><init>(Landroid/content/Context;)V

    .line 1786
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    const-string v2, "raw.debuginfo"

    .line 1788
    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "raw.debuginfo"

    .line 1791
    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceFileManager;->getFileStreamFromRawRes(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "="

    .line 1796
    invoke-static {v0, v2}, Lcom/adobe/air/utils/Utils;->parseKeyValuePairFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "incomingDebugPort"

    .line 1797
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 1802
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    .line 1803
    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :catch_0
    :cond_0
    :try_start_2
    const-string v2, "outgoingDebugHost"

    .line 1812
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1817
    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    if-eq v1, v2, :cond_1

    .line 1824
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    goto :goto_0

    .line 1818
    :cond_1
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1821
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "listen and connect are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :cond_2
    move-object v0, v3

    .line 1833
    :goto_0
    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$3;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode:[I

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    return-void

    .line 1899
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    return-void

    .line 1885
    :pswitch_2
    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->nativeConnectDebuggerSocket(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1889
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogforIpAddress(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1892
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v1, v0}, Lcom/adobe/air/DebuggerSettings;->setHost(Ljava/lang/String;)V

    .line 1893
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto/16 :goto_8

    :pswitch_3
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1846
    :try_start_3
    new-instance v4, Ljava/net/ServerSocket;

    iget v5, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1847
    :try_start_4
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1865
    :try_start_5
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    const/4 v4, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_1

    :catch_4
    move-object v3, v4

    goto :goto_3

    :catch_5
    move-object v3, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v4

    .line 1855
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.os.NetworkOnMainThreadException"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_6

    .line 1865
    :try_start_7
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    nop

    goto :goto_6

    :goto_2
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1870
    :catch_8
    :cond_4
    throw v0

    :catch_9
    :goto_3
    if-eqz v3, :cond_5

    goto :goto_5

    :catch_a
    :goto_4
    if-eqz v3, :cond_5

    .line 1865
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :catch_b
    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    .line 1873
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 1874
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto :goto_7

    .line 1877
    :cond_7
    iget v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-direct {p0, v3}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogUnableToListenOnPort(I)V

    .line 1880
    :goto_7
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    sget-object v4, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    if-ne v1, v4, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {v3, v0}, Lcom/adobe/air/DebuggerSettings;->setListen(Z)V

    .line 1881
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/DebuggerSettings;->setDebugerPort(I)V

    :cond_9
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeDialogWaitingForConnection()V
    .locals 4

    .line 1919
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1922
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    .line 1923
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "RemoteDebuggerListenerDialogClose"

    .line 1924
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "debuggerPort"

    .line 1925
    iget v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1926
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initializeAndroidAppVars(Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 850
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 851
    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidPackageName(Ljava/lang/String;)V

    .line 854
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p1}, Lcom/adobe/air/ApplicationFileManager;->setAndroidAPKPath(Ljava/lang/String;)V

    .line 857
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 858
    invoke-static {p1}, Lcom/adobe/air/ApplicationFileManager;->processAndroidDataPath(Ljava/lang/String;)V

    return-void
.end method

.method private static isAndroidTV(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "uimode"

    .line 254
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 255
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method private isAvailablePath(Ljava/lang/String;)Z
    .locals 1

    .line 1699
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1700
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isGingerbread()Z
    .locals 2

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHoneycomb()Z
    .locals 2

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIceCreamSandwich()Z
    .locals 2

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isJellybean()Z
    .locals 2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native nativeActivateEvent()V
.end method

.method private native nativeDeactivateEvent()V
.end method

.method private native nativeLowMemoryEvent()V
.end method

.method private native nativeNotifyPermissionRequestResult(II)V
.end method

.method private native nativeOnFocusListener(Z)V
.end method

.method private native nativeSendInvokeEventWithData(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native nativeSetVisible(Z)V
.end method

.method private parseArgs(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 8

    const-string p1, ""

    const-string v0, ""

    const-string v1, ""

    const-string v2, "false"

    const-string v3, "false"

    const-string v4, "false"

    const-string v5, ""

    const/4 v6, 0x0

    .line 872
    :try_start_0
    aget-object v6, p2, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    .line 873
    :try_start_1
    aget-object p1, p2, p1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x2

    .line 874
    :try_start_2
    aget-object v0, p2, v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v1, 0x3

    .line 875
    :try_start_3
    aget-object v1, p2, v1
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v2, 0x4

    .line 876
    :try_start_4
    aget-object v2, p2, v2
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    .line 878
    :try_start_5
    array-length v3, p2

    const/4 v7, 0x6

    if-lt v3, v7, :cond_0

    const/4 v3, 0x5

    .line 879
    aget-object v3, p2, v3
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .line 880
    :try_start_6
    aget-object p2, p2, v7
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v5, p2

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    move-object v3, v4

    goto :goto_1

    :catch_1
    move-object v6, p1

    :catch_2
    move-object p1, v0

    :catch_3
    move-object v0, v1

    :catch_4
    move-object v1, v2

    :catch_5
    move-object v2, v3

    goto :goto_0

    .line 894
    :catch_6
    :goto_1
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    .line 895
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    .line 896
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    .line 897
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sput-boolean p2, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    .line 898
    sput-object v5, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    .line 899
    iget-object p2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 902
    invoke-direct {p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->initializeAndroidAppVars(Landroid/content/pm/ApplicationInfo;)V

    .line 904
    iget-boolean p2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-eqz p2, :cond_1

    .line 905
    iput-object v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 906
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    goto :goto_2

    .line 909
    :cond_1
    invoke-static {}, Lcom/adobe/air/ApplicationFileManager;->getAppXMLRoot()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 910
    invoke-static {}, Lcom/adobe/air/ApplicationFileManager;->getAppRoot()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private planeRemovedSuccessfully(Landroid/view/SurfaceView;)Z
    .locals 3

    .line 588
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "LT18i"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "LT15i"

    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Arc"

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    :cond_1
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isIceCreamSandwich()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 595
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private setFullScreenFromMetaData()V
    .locals 3

    .line 2201
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2202
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "fullScreen"

    .line 2208
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2210
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private setMainView(Landroid/view/View;)V
    .locals 3

    .line 1235
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    .line 1243
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 1247
    :cond_2
    :try_start_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0, p1}, Lcom/adobe/air/Entrypoints;->setMainView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private showDialogUnableToListenOnPort(I)V
    .locals 2

    .line 1769
    new-instance v0, Lcom/adobe/air/ListenErrorDialog;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/adobe/air/ListenErrorDialog;-><init>(Landroid/app/Activity;I)V

    .line 1770
    invoke-virtual {v0}, Lcom/adobe/air/ListenErrorDialog;->createAndShowDialog()V

    return-void
.end method

.method private showDialogWaitingForConnection(I)V
    .locals 3

    .line 1937
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    if-eqz v0, :cond_0

    .line 1941
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/air/AndroidActivityWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidActivityWrapper$2;-><init>(Lcom/adobe/air/AndroidActivityWrapper;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1951
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1957
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    .line 1958
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    .line 1959
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RemoteDebuggerListenerDialog"

    .line 1960
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "debuggerPort"

    .line 1961
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1962
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private showDialogforIpAddress(Ljava/lang/String;)V
    .locals 2

    .line 1912
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    .line 1913
    new-instance v0, Lcom/adobe/air/RemoteDebuggerDialog;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/RemoteDebuggerDialog;-><init>(Landroid/app/Activity;)V

    .line 1914
    invoke-virtual {v0, p1}, Lcom/adobe/air/RemoteDebuggerDialog;->createAndShowDialog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AndroidToFlashPermission(Ljava/lang/String;)I
    .locals 5

    .line 2530
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x128

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x64

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x1

    :goto_2
    :pswitch_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_5
        0x1772a2a5 -> :sswitch_4
        0x1b9efa65 -> :sswitch_3
        0x516a29a7 -> :sswitch_2
        0x63db4d42 -> :sswitch_1
        0x6d24f988 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1676
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->isAvailablePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Requested URL is not available"

    .line 1681
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1682
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1685
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultIntentFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public FlashToAndroidPermission(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x128

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "android.permission.RECORD_AUDIO"

    goto :goto_0

    :pswitch_1
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.ACCESS_WIFI_STATE"

    goto :goto_0

    :cond_2
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    goto :goto_0

    :cond_3
    const-string p1, "android.permission.CAMERA"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public GetAppCacheDirectory()Ljava/lang/String;
    .locals 1

    .line 2233
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAppDataDirectory()Ljava/lang/String;
    .locals 1

    .line 2238
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public GetDebuggerSettings()Lcom/adobe/air/DebuggerSettings;
    .locals 1

    .line 2450
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    return-object v0
.end method

.method public GetLibCorePath()Ljava/lang/String;
    .locals 2

    .line 1728
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    sget-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sIsDebugger:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/Utils;->GetLibCorePath(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    return-object v0
.end method

.method public GetRuntimeDataDirectory()Ljava/lang/String;
    .locals 2

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method GetTargetSdkVersion()I
    .locals 3

    .line 348
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mTargetSdkVersion:I

    if-nez v0, :cond_0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 353
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mTargetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :catch_0
    :cond_0
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mTargetSdkVersion:I

    return v0
.end method

.method public LaunchMarketPlaceForAIR(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    const-string v0, "android.intent.action.VIEW"

    .line 1717
    invoke-virtual {p0, v0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 778
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 793
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public SendInvokeEvent()V
    .locals 5

    .line 1391
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1398
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1399
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND"

    .line 1401
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const-string v2, "text/plain"

    .line 1402
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1403
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->handleSendText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "image/"

    .line 1404
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1405
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->handleSendImage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 1407
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const-string v2, "image/"

    .line 1408
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1409
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->handleSendMultipleImages(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1413
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 1427
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSendInvokeEventWithData(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public ShowImmediateUpdateDialog()V
    .locals 7

    const/4 v0, 0x0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 827
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "airDownloadURL"

    .line 832
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    move-object v6, v0

    if-eqz v6, :cond_1

    .line 842
    const-class v2, Lcom/adobe/air/AIRUpdateDialog;

    const-string v3, "android.intent.action.MAIN"

    const-string v4, "AIRUpdateDialog"

    const-string v5, "airDownloadURL"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/air/AndroidActivityWrapper;->SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_1
    const-class v0, Lcom/adobe/air/AIRUpdateDialog;

    const-string v1, "android.intent.action.MAIN"

    const-string v2, "AIRUpdateDialog"

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public StartDownloadConfigService()V
    .locals 2

    .line 807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.adobe.air.DownloadConfig"

    .line 809
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public WaitForNewActivity()Landroid/app/Activity;
    .locals 2

    .line 2183
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2186
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2192
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2193
    throw v0

    .line 2192
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2194
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V
    .locals 1

    .line 2130
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2137
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addInputEventListner(Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;)V
    .locals 1

    .line 2001
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public applyDownloadedConfig()V
    .locals 1

    .line 2456
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-eqz v0, :cond_0

    .line 2458
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0}, Lcom/adobe/air/Entrypoints;->EntryApplyDownloadedConfig()V

    :cond_0
    return-void
.end method

.method public checkPermission(I)I
    .locals 5

    .line 2464
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->FlashToAndroidPermission(I)Ljava/lang/String;

    move-result-object p1

    .line 2469
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->manifestDeclaresPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 2475
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 2480
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 2483
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-nez v0, :cond_2

    return v4

    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public didRemoveOverlay()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 736
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method

.method public disableMediaCodec()Z
    .locals 3

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 465
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 467
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "disableMediaCodec"

    .line 470
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .line 1585
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callInputEventListeners(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 0

    .line 1579
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callInputEventListeners(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public embeddedFonts()Z
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 489
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 491
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "embeddedFonts"

    .line 494
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public ensureZOrder()V
    .locals 3

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 677
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getAutoOrients()Z
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getAutoOrients()Z

    move-result v0

    return v0
.end method

.method public getCameraView()Lcom/adobe/air/AndroidCameraView;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    return-object v0
.end method

.method public getDefaultContext()Landroid/content/Context;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getDefaultIntentFlags()I
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x10000000

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method public getEgl()Lcom/adobe/air/FlashEGL;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_0

    .line 764
    invoke-static {}, Lcom/adobe/air/FlashEGLFactory;->CreateFlashEGL()Lcom/adobe/air/FlashEGL;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    return-object v0
.end method

.method public getHardKeyboardType()I
    .locals 1

    .line 1645
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    return v0
.end method

.method protected getIsFullScreen()Z
    .locals 1

    .line 2228
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getOverlaysLayout(Z)Landroid/widget/RelativeLayout;
    .locals 1

    if-eqz p1, :cond_0

    .line 722
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_0

    .line 724
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 725
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 728
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public getRuntimeContext()Landroid/content/Context;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSpeakerphoneOn()Z
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public getSupportedOrientations()[I
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getSupportedOrientations()[I

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method public getViewSplashScreenImageView()Landroid/widget/ImageView;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_splashscreenImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWebContentsDebuggingEnabled()Z
    .locals 3

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 443
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 445
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "webContentsDebuggingEnabled"

    .line 448
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gotResultFromDialog(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1976
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1977
    invoke-static {p2}, Lcom/adobe/air/utils/Utils;->nativeConnectDebuggerSocket(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 1980
    invoke-direct {p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogforIpAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 1983
    :cond_1
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v2, p2}, Lcom/adobe/air/DebuggerSettings;->setHost(Ljava/lang/String;)V

    .line 1984
    iget-object p2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {p2, v0}, Lcom/adobe/air/DebuggerSettings;->setListen(Z)V

    const/4 p2, 0x1

    .line 1985
    iput-boolean p2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    :goto_1
    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    if-nez p1, :cond_4

    .line 1990
    :cond_3
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    :cond_4
    return-void
.end method

.method handleSendImage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.extra.STREAM"

    .line 1437
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1441
    check-cast p1, Landroid/net/Uri;

    .line 1442
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method handleSendMultipleImages(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.intent.extra.STREAM"

    .line 1448
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1451
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method handleSendText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.extra.TEXT"

    .line 1432
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initCallStateListener()V
    .locals 2

    .line 1258
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    if-nez v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/telephony/AndroidTelephonyManager;->CreateAndroidTelephonyManager(Landroid/content/Context;)Lcom/adobe/air/telephony/AndroidTelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    .line 1261
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/telephony/AndroidTelephonyManager;->listen(Z)V

    :cond_0
    return-void
.end method

.method public isApplicationLaunched()Z
    .locals 1

    .line 757
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    return v0
.end method

.method public isHardKeyboardHidden()Z
    .locals 2

    .line 1640
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResumed()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenLocked()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->isSurfaceValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchApplication()V
    .locals 9

    .line 1505
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1507
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    iget-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/adobe/air/AndroidActivityWrapper;->LaunchApplication(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1509
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1511
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_1

    .line 1514
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SendInvokeEvent()V

    .line 1517
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 1520
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    if-eqz v0, :cond_3

    .line 1522
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeActivateEvent()V

    .line 1523
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 1527
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    return-void
.end method

.method manifestDeclaresPermission(I)Z
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->FlashToAndroidPermission(I)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->manifestDeclaresPermission(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method manifestDeclaresPermission(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDeclaredPermissions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 329
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 330
    array-length v2, v1

    if-lez v2, :cond_1

    .line 332
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDeclaredPermissions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 338
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDeclaredPermissions:Ljava/util/List;

    .line 342
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDeclaredPermissions:Ljava/util/List;

    if-nez v1, :cond_2

    return v0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDeclaredPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public needsCompositingSurface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1635
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityResultListeners(IILandroid/content/Intent;)V

    return-void
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1568
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 1569
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 1571
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1573
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;Z)Z
    .locals 0

    return p2
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    .line 917
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 918
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const/4 v0, 0x1

    .line 921
    sput-boolean v0, Lcom/adobe/air/customHandler;->mRunning:Z

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidActivityWrapper;->parseArgs(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 925
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SignalNewActivityCreated()V

    .line 929
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :catch_0
    iget-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/adobe/air/DeviceProfiling;->checkAndInitiateProfiler(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->checkForDebuggerAndLaunchDialog()V

    goto :goto_0

    .line 953
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    .line 957
    :goto_0
    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 959
    invoke-static {}, Lcom/adobe/air/ConfigDownloadListener;->GetConfigDownloadListener()Lcom/adobe/air/ConfigDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public onCreateDialog(ILandroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    return-object p2
.end method

.method public onCreateDialog(ILandroid/os/Bundle;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    return-object p3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 0

    return p2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;Z)Z
    .locals 0

    return p3
.end method

.method public onCreatePanelView(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p2
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Z)Z
    .locals 0

    return p3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p4
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1356
    sput-boolean v0, Lcom/adobe/air/customHandler;->mRunning:Z

    .line 1358
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1360
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1362
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v1, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager;->onActivityDestroyed()V

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 1366
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1367
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 1372
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x0

    .line 1375
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 1376
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 1377
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 1378
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_splashscreenImageView:Landroid/widget/ImageView;

    .line 1379
    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 1380
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->setMainView(Landroid/view/View;)V

    .line 1382
    invoke-static {}, Lcom/adobe/flashplayer/HDMIUtils;->closeHelper()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Z)Z
    .locals 0

    return p3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;Z)Z
    .locals 0

    return p3
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;Z)Z
    .locals 0

    return p4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Z)Z
    .locals 0

    return p3
.end method

.method public onLowMemory()V
    .locals 0

    .line 1591
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeLowMemoryEvent()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;Z)Z
    .locals 0

    return p3
.end method

.method public onMenuOpened(ILandroid/view/Menu;Z)Z
    .locals 0

    return p3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1462
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SendInvokeEvent()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Z)Z
    .locals 0

    return p2
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1269
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1271
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1275
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityPaused()V

    .line 1281
    :cond_1
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-eqz v0, :cond_2

    .line 1282
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidIdleState;->releaseLock()V

    .line 1285
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1287
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeOnFocusListener(Z)V

    .line 1288
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeDeactivateEvent()V

    .line 1291
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPostResume()V
    .locals 0

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 0

    return p2
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;Z)Z
    .locals 0

    return p4
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 2576
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 2578
    aget p3, p3, p1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 2583
    :goto_0
    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->AndroidToFlashPermission(Ljava/lang/String;)I

    move-result p1

    .line 2585
    invoke-direct {p0, p1, p3}, Lcom/adobe/air/AndroidActivityWrapper;->nativeNotifyPermissionRequestResult(II)V

    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 1326
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1328
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1339
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSoftKeyboardOnWindowFocusChange()V

    :cond_0
    const/4 v0, 0x1

    .line 1342
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1298
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1300
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1302
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityResumed()V

    .line 1305
    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-eqz v0, :cond_1

    .line 1306
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidIdleState;->acquireLock()V

    .line 1308
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1310
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeActivateEvent()V

    .line 1311
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->nativeOnFocusListener(Z)V

    goto :goto_0

    .line 1315
    :cond_2
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 1318
    :goto_0
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 1319
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method

.method public onRetainNonConfigurationInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0

    .line 1543
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    .line 1544
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1546
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 1547
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    :cond_0
    return-void
.end method

.method public onSearchRequested(Z)Z
    .locals 0

    return p1
.end method

.method public onStop()V
    .locals 1

    .line 1348
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1349
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    const/4 v0, 0x0

    .line 1350
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 1538
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    return-void
.end method

.method public onSurfaceInitialized()V
    .locals 4

    .line 1467
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->setMainView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 1468
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1470
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    if-eqz v0, :cond_0

    .line 1472
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogWaitingForConnection(I)V

    const/4 v0, 0x0

    .line 1473
    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 1479
    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/air/Entrypoints;

    invoke-direct {v0}, Lcom/adobe/air/Entrypoints;-><init>()V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    .line 1480
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/harman/services/AIRRuntimeCheck;->doSplashScreen(Lcom/adobe/air/Entrypoints;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1484
    new-instance v1, Lcom/adobe/air/AndroidActivityWrapper$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidActivityWrapper$1;-><init>(Lcom/adobe/air/AndroidActivityWrapper;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1493
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->launchApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0

    return p2
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0

    return p2
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public planeBreakCascade()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    .line 581
    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    :cond_2
    return-void
.end method

.method public planeCleanCascade()V
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    .line 566
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    :cond_0
    return-void
.end method

.method public planeKickCascade()V
    .locals 5

    .line 606
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isJellybean()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    .line 610
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    .line 611
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    return-void

    .line 614
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    .line 616
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 617
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 618
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_5
    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_7

    .line 624
    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 625
    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    invoke-direct {p0, v4}, Lcom/adobe/air/AndroidActivityWrapper;->planeRemovedSuccessfully(Landroid/view/SurfaceView;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 626
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 631
    :cond_7
    :goto_2
    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    .line 633
    :cond_8
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    if-nez v0, :cond_9

    .line 634
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 638
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    :cond_9
    return-void
.end method

.method public planeStepCascade()V
    .locals 4

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 654
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    return-void

    .line 658
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    if-nez v1, :cond_3

    .line 659
    :goto_0
    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 660
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 664
    :cond_1
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    return-void

    .line 659
    :cond_2
    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerPlane(Landroid/view/SurfaceView;I)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method

.method public removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeInputEventListner(Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;)V
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestPermission(I)V
    .locals 3

    .line 2556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 2558
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->FlashToAndroidPermission(I)Ljava/lang/String;

    move-result-object p1

    .line 2563
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 2567
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->checkPermission(I)I

    move-result v0

    .line 2568
    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeNotifyPermissionRequestResult(II)V

    :goto_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    return-void
.end method

.method public setAutoOrients(Z)V
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    return-void
.end method

.method protected setIsFullScreen(Z)V
    .locals 0

    .line 2223
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setOrientation(I)V

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2

    .line 430
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public setUseRGB565(Ljava/lang/Boolean;)V
    .locals 0

    .line 1659
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    return-void
.end method

.method public unregisterPlane(I)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method

.method public useRGB565()Z
    .locals 2

    .line 1664
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    return v0

    .line 1665
    :cond_0
    new-instance v0, Lcom/adobe/air/ResourceFileManager;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceFileManager;-><init>(Landroid/content/Context;)V

    const-string v1, "raw.rgba8888"

    .line 1668
    invoke-virtual {v0, v1}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
