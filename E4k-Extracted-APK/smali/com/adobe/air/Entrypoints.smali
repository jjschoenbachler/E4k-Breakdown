.class public Lcom/adobe/air/Entrypoints;
.super Ljava/lang/Object;
.source "Entrypoints.java"


# static fields
.field static mCallEntryMain:Z

.field private static mLibCorePath:Ljava/lang/String;

.field private static mMainHandler:Lcom/adobe/air/customHandler;

.field public static s_context:Landroid/content/Context;

.field private static s_packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/adobe/air/customHandler;

    invoke-direct {v0}, Lcom/adobe/air/customHandler;-><init>()V

    sput-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppCacheDirectory()Ljava/lang/String;
    .locals 1

    .line 203
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 59
    sget-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 198
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getRuntimeDataDirectory()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

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

.method public static registerCallback(IIILandroid/os/Handler;)V
    .locals 2

    if-nez p3, :cond_0

    .line 67
    sget-object p3, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x45f

    .line 71
    iput v1, v0, Landroid/os/Message;->what:I

    .line 72
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 73
    iput p2, v0, Landroid/os/Message;->arg2:I

    if-lez p0, :cond_1

    int-to-long p0, p0

    .line 76
    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static registerKeyCallback(ILcom/adobe/air/KeyEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 107
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x461

    .line 111
    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_1

    int-to-long p0, p0

    .line 117
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 87
    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x460

    .line 91
    iput v1, v0, Landroid/os/Message;->what:I

    .line 93
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_1

    int-to-long p0, p0

    .line 96
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public EntryApplyDownloadedConfig()V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->applyDownloadedConfig()V

    return-void
.end method

.method public EntryDownloadConfig(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    .line 160
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 161
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    .line 163
    sget-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/air/ApplicationFileManager;->setAndroidPackageName(Ljava/lang/String;)V

    .line 166
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidAPKPath(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->processAndroidDataPath(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibSTLPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/adobe/air/Entrypoints;->EntryDownloadConfigNative(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public native EntryDownloadConfigNative(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public native EntryGetRuntimeDetails()Ljava/lang/String;
.end method

.method public EntryMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 11

    .line 132
    move-object/from16 v0, p8

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    .line 133
    move-object/from16 v0, p7

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    const-string v0, "AIR RUNTIME"

    .line 134
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->EntryGetRuntimeDetails()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-boolean v0, Lcom/adobe/air/Entrypoints;->mCallEntryMain:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 138
    sput-boolean v0, Lcom/adobe/air/Entrypoints;->mCallEntryMain:Z

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 143
    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/Entrypoints;->EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public native EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
.end method

.method public EntryStopRuntime()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->EntryStopRuntimeNative()V

    return-void
.end method

.method public native EntryStopRuntimeNative()V
.end method

.method public GetLibCorePath()Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibCorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    .line 153
    :cond_0
    sget-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    return-object v0
.end method

.method public native applyDownloadedConfig()V
.end method

.method public native checkSplashScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public setMainView(Landroid/view/View;)V
    .locals 0

    .line 193
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p0, p1}, Lcom/adobe/air/Entrypoints;->setMainViewOnCreate(Lcom/adobe/air/AIRWindowSurfaceView;)V

    return-void
.end method

.method public native setMainViewOnCreate(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end method
