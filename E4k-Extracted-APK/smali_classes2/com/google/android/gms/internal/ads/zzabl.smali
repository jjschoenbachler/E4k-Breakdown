.class final Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfik;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaby;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzabk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfik;Lcom/google/android/gms/internal/ads/zzfjb;Lcom/google/android/gms/internal/ads/zzaby;Lcom/google/android/gms/internal/ads/zzabk;Lcom/google/android/gms/internal/ads/zzaav;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzfik;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzfjb;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzaby;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzabk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzaav;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzfik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Lcom/google/android/gms/internal/ads/zzaby;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:Lcom/google/android/gms/internal/ads/zzabk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzabl;->zze:Lcom/google/android/gms/internal/ads/zzaav;

    return-void
.end method

.method private final zze()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzc()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v1

    const-string v2, "v"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzfik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfik;->zza()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gms"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzfik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfik;->zzc()Z

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "int"

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyz;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "up"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:Lcom/google/android/gms/internal/ads/zzabk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabk;->zza()Z

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    .line 7
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final zza(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Lcom/google/android/gms/internal/ads/zzaby;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaby;->zza(Landroid/view/View;)V

    return-void
.end method

.method public final zzb()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabl;->zze()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzb()Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v1

    const-string v2, "gai"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzfik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfik;->zzb()Z

    move-result v3

    .line 3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "did"

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyz;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dst"

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyz;->zzag()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "doo"

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyz;->zze()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zze:Lcom/google/android/gms/internal/ads/zzaav;

    if-eqz v1, :cond_0

    const-string v2, "nt"

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaav;->zzd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabl;->zze()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabl;->zze()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lts"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Lcom/google/android/gms/internal/ads/zzaby;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaby;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
