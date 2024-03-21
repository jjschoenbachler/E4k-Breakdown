.class Lcom/bugsnag/android/AppData;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private appContext:Landroid/content/Context;

.field private appName:Ljava/lang/String;

.field private config:Lcom/bugsnag/android/Configuration;

.field private guessedReleaseStage:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private versionCode:Ljava/lang/Integer;

.field private versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    .line 28
    iput-object p1, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    .line 30
    iget-object p1, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->getAppName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->appName:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->getVersionCode()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->versionCode:Ljava/lang/Integer;

    .line 33
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->getVersionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->versionName:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->guessReleaseStage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->guessedReleaseStage:Ljava/lang/String;

    return-void
.end method

.method public static close(Ljava/net/URLConnection;)V
    .locals 1

    .line 25
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 31
    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x7fffffff

    cmp-long v0, v1, p0

    if-lez v0, :cond_1

    return v4

    :cond_1
    long-to-int p0, v1

    return p0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get app name"

    .line 90
    invoke-static {v0}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getVersionCode()Ljava/lang/Integer;
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get versionCode"

    .line 104
    invoke-static {v0}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 3

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get versionName"

    .line 117
    invoke-static {v0}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private guessReleaseStage()Ljava/lang/String;
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const-string v0, "development"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get releaseStage"

    .line 133
    invoke-static {v0}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;)V

    :cond_0
    const-string v0, "production"

    return-object v0
.end method

.method static info(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Bugsnag"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static warn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Bugsnag"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Bugsnag"

    .line 17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final getReleaseStage()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->releaseStage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->releaseStage:Ljava/lang/String;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->guessedReleaseStage:Ljava/lang/String;

    return-object v0
.end method

.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "id"

    .line 39
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "name"

    .line 40
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "packageName"

    .line 41
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "versionName"

    .line 42
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "versionCode"

    .line 43
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->versionCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    .line 45
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->buildUUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "buildUUID"

    .line 46
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->buildUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    :cond_0
    const-string v0, "version"

    .line 50
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->appVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "releaseStage"

    .line 51
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bugsnag/android/AppData;->getReleaseStage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 53
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
