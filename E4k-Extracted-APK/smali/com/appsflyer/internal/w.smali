.class final Lcom/appsflyer/internal/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field AFInAppEventParameterName:D

.field final AFInAppEventType:[J

.field final AFKeystoreWrapper:[[F

.field private final AFLogger$LogLevel:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final AFVersionDeclaration:Ljava/util/concurrent/Executor;

.field private final AppsFlyer2dXConversionCallback:I

.field private final init:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field valueOf:J

.field private final values:I


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/appsflyer/internal/w;->AFKeystoreWrapper:[[F

    .line 32
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/appsflyer/internal/w;->AFInAppEventType:[J

    .line 39
    iput-object p2, p0, Lcom/appsflyer/internal/w;->AFVersionDeclaration:Ljava/util/concurrent/Executor;

    .line 40
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p2

    iput p2, p0, Lcom/appsflyer/internal/w;->values:I

    .line 41
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/appsflyer/internal/w;->AFLogger$LogLevel:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/appsflyer/internal/w;->init:Ljava/lang/String;

    .line 43
    iget p1, p0, Lcom/appsflyer/internal/w;->values:I

    iget-object p2, p0, Lcom/appsflyer/internal/w;->AFLogger$LogLevel:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsflyer/internal/w;->init:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    .line 2054
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x1f

    .line 2055
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    .line 43
    iput p1, p0, Lcom/appsflyer/internal/w;->AppsFlyer2dXConversionCallback:I

    return-void
.end method

.method private AFInAppEventParameterName()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/appsflyer/internal/w;->AFKeystoreWrapper:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private AFKeystoreWrapper()Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const-string v1, "sT"

    .line 188
    iget v2, p0, Lcom/appsflyer/internal/w;->values:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sN"

    .line 189
    iget-object v2, p0, Lcom/appsflyer/internal/w;->AFLogger$LogLevel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sV"

    .line 190
    iget-object v2, p0, Lcom/appsflyer/internal/w;->init:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/appsflyer/internal/w;->AFKeystoreWrapper:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const-string v2, "sVS"

    .line 193
    invoke-static {v1}, Lcom/appsflyer/internal/w;->values([F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/w;->AFKeystoreWrapper:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    const-string v2, "sVE"

    .line 197
    invoke-static {v1}, Lcom/appsflyer/internal/w;->values([F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static valueOf(Landroid/hardware/Sensor;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static values([F[F)D
    .locals 8
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 67
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static values([F)Ljava/util/List;
    .locals 4
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 80
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic values(Landroid/hardware/Sensor;)Z
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/appsflyer/internal/w;->valueOf(Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final AFKeystoreWrapper(Ljava/util/Map;Z)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/w;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/appsflyer/internal/w;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/appsflyer/internal/w;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 2207
    iget-object p1, p0, Lcom/appsflyer/internal/w;->AFKeystoreWrapper:[[F

    array-length p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2208
    iget-object v1, p0, Lcom/appsflyer/internal/w;->AFKeystoreWrapper:[[F

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2210
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/w;->AFInAppEventType:[J

    array-length p1, p1

    :goto_1
    const-wide/16 v0, 0x0

    if-ge p2, p1, :cond_1

    .line 2211
    iget-object v2, p0, Lcom/appsflyer/internal/w;->AFInAppEventType:[J

    aput-wide v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 2213
    iput-wide p1, p0, Lcom/appsflyer/internal/w;->AFInAppEventParameterName:D

    .line 2214
    iput-wide v0, p0, Lcom/appsflyer/internal/w;->valueOf:J

    return-void

    .line 132
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/appsflyer/internal/w;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 240
    :cond_0
    instance-of v0, p1, Lcom/appsflyer/internal/w;

    if-eqz v0, :cond_1

    .line 241
    check-cast p1, Lcom/appsflyer/internal/w;

    .line 242
    iget v0, p1, Lcom/appsflyer/internal/w;->values:I

    iget-object v1, p1, Lcom/appsflyer/internal/w;->AFLogger$LogLevel:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/w;->init:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/appsflyer/internal/w;->values(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/appsflyer/internal/w;->AppsFlyer2dXConversionCallback:I

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/w;->AFVersionDeclaration:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/w$3;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/w$3;-><init>(Lcom/appsflyer/internal/w;Landroid/hardware/SensorEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final values(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    iget v0, p0, Lcom/appsflyer/internal/w;->values:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/internal/w;->AFLogger$LogLevel:Ljava/lang/String;

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/internal/w;->init:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
