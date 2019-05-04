.class public Lcom/google/android/gms/internal/zzjf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zzEZ:Lcom/google/android/gms/internal/zzgb;

.field private final zzOT:Lcom/google/android/gms/internal/zzjc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgb;Lcom/google/android/gms/internal/zzjb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjf;->zzEZ:Lcom/google/android/gms/internal/zzgb;

    new-instance v0, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzjc;-><init>(Lcom/google/android/gms/internal/zzjb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzOT:Lcom/google/android/gms/internal/zzjc;

    return-void
.end method


# virtual methods
.method public zzip()Lcom/google/android/gms/internal/zzgb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzEZ:Lcom/google/android/gms/internal/zzgb;

    return-object v0
.end method

.method public zziq()Lcom/google/android/gms/internal/zzjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzOT:Lcom/google/android/gms/internal/zzjc;

    return-object v0
.end method
