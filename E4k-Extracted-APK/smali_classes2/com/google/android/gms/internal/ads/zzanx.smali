.class public abstract Lcom/google/android/gms/internal/ads/zzanx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzanx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzanx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzanw;ZJ)Lcom/google/android/gms/internal/ads/zzanw;
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;
.end method

.method public abstract zze(Ljava/lang/Object;)I
.end method

.method public final zzf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzanx;->zzb(ILcom/google/android/gms/internal/ads/zzanw;ZJ)Lcom/google/android/gms/internal/ads/zzanw;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(ILcom/google/android/gms/internal/ads/zzanv;Lcom/google/android/gms/internal/ads/zzanw;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(ILcom/google/android/gms/internal/ads/zzanv;Z)Lcom/google/android/gms/internal/ads/zzanv;

    .line 2
    invoke-virtual {p0, v0, p3, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;

    const/4 p2, 0x1

    if-nez p1, :cond_2

    const/4 p1, -0x1

    packed-switch p4, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result p4

    add-int/2addr p4, p1

    if-nez p4, :cond_0

    :pswitch_1
    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result p4

    add-int/2addr p4, p1

    if-nez p4, :cond_0

    const/4 p2, -0x1

    :cond_0
    :goto_0
    if-ne p2, p1, :cond_1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzg(ILcom/google/android/gms/internal/ads/zzanw;Z)Lcom/google/android/gms/internal/ads/zzanw;

    return v0

    :cond_2
    add-int/2addr p1, p2

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
