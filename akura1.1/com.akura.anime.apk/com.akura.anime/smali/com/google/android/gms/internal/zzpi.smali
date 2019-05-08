.class public final Lcom/google/android/gms/internal/zzpi;
.super Landroid/widget/ImageView;


# instance fields
.field private zzaql:Landroid/net/Uri;

.field private zzaqm:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public zzbX(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpi;->zzaqm:I

    return-void
.end method

.method public zzn(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpi;->zzaql:Landroid/net/Uri;

    return-void
.end method

.method public zzte()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpi;->zzaqm:I

    return v0
.end method
