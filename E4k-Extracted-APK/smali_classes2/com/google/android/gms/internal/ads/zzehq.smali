.class public final Lcom/google/android/gms/internal/ads/zzehq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzffc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfbe;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzffc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zza:Lcom/google/android/gms/internal/ads/zzfbe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzc:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzd:Lcom/google/android/gms/internal/ads/zzffc;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzezz;ILcom/google/android/gms/internal/ads/zzeeg;J)V
    .locals 2
    .param p4    # Lcom/google/android/gms/internal/ads/zzeeg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "adapter_status"

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzh(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzffb;

    .line 23
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzffb;->zzi(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzffb;

    const-string p1, "adapter_l"

    .line 24
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p1, p5}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    const-string p1, "sc"

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    if-eqz p4, :cond_0

    const-string p1, "arec"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeeg;->zzb()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p3

    .line 26
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 27
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zza:Lcom/google/android/gms/internal/ads/zzfbe;

    .line 28
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeeg;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfbe;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "areec"

    .line 29
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 30
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzt:Ljava/util/List;

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtc;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzdtb;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "ancn"

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzdtb;->zza:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdtb;->zzb:Lcom/google/android/gms/internal/ads/zzbya;

    if-eqz p2, :cond_1

    const-string p3, "adapter_v"

    .line 33
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbya;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdtb;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    if-eqz p1, :cond_2

    const-string p2, "adapter_sv"

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbya;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzd:Lcom/google/android/gms/internal/ads/zzffc;

    .line 35
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzffc;->zza(Lcom/google/android/gms/internal/ads/zzffb;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzc:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zzd()Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzb(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzc(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string p1, "action"

    const-string v1, "adapter_status"

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string p1, "adapter_l"

    .line 7
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string p1, "sc"

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    if-eqz p4, :cond_4

    const-string p1, "arec"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeeg;->zzb()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p3

    .line 9
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zza:Lcom/google/android/gms/internal/ads/zzfbe;

    .line 11
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeeg;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfbe;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p3, "areec"

    .line 12
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehq;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 13
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzt:Ljava/util/List;

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtc;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzdtb;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "ancn"

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzdtb;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdtb;->zzb:Lcom/google/android/gms/internal/ads/zzbya;

    if-eqz p2, :cond_5

    const-string p3, "adapter_v"

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbya;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdtb;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    if-eqz p1, :cond_6

    const-string p2, "adapter_sv"

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbya;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 20
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zze()V

    return-void
.end method
