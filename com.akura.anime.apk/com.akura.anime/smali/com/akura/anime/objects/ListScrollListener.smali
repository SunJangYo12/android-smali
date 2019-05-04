.class public abstract Lcom/akura/anime/objects/ListScrollListener;
.super Ljava/lang/Object;
.source "ListScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentPage:I

.field private lasttime:J

.field private loading:Z

.field private mLastFirstVisibleItem:I

.field private mScrolling:I

.field private previousTotalItemCount:I

.field private startingPageIndex:I

.field private visibleThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/akura/anime/objects/ListScrollListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/akura/anime/objects/ListScrollListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "visibleThreshold"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/akura/anime/objects/ListScrollListener;->visibleThreshold:I

    .line 15
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->currentPage:I

    .line 17
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->previousTotalItemCount:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    .line 21
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->startingPageIndex:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/akura/anime/objects/ListScrollListener;->mLastFirstVisibleItem:I

    .line 24
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->mScrolling:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akura/anime/objects/ListScrollListener;->lasttime:J

    .line 29
    iput p1, p0, Lcom/akura/anime/objects/ListScrollListener;->visibleThreshold:I

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "visibleThreshold"    # I
    .param p2, "startPage"    # I

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/akura/anime/objects/ListScrollListener;->visibleThreshold:I

    .line 15
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->currentPage:I

    .line 17
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->previousTotalItemCount:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    .line 21
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->startingPageIndex:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/akura/anime/objects/ListScrollListener;->mLastFirstVisibleItem:I

    .line 24
    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->mScrolling:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/akura/anime/objects/ListScrollListener;->lasttime:J

    .line 34
    iput p1, p0, Lcom/akura/anime/objects/ListScrollListener;->visibleThreshold:I

    .line 35
    iput p2, p0, Lcom/akura/anime/objects/ListScrollListener;->startingPageIndex:I

    .line 36
    iput p2, p0, Lcom/akura/anime/objects/ListScrollListener;->currentPage:I

    .line 37
    return-void
.end method


# virtual methods
.method public abstract onFirst(Z)V
.end method

.method public abstract onMore(I)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    if-nez p2, :cond_5

    move v1, v4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/akura/anime/objects/ListScrollListener;->onFirst(Z)V

    .line 56
    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->previousTotalItemCount:I

    if-ge p4, v1, :cond_0

    .line 58
    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->startingPageIndex:I

    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->currentPage:I

    .line 59
    iput p4, p0, Lcom/akura/anime/objects/ListScrollListener;->previousTotalItemCount:I

    .line 60
    if-nez p4, :cond_0

    .line 62
    iput-boolean v4, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->previousTotalItemCount:I

    if-le p4, v1, :cond_1

    .line 72
    iput-boolean v5, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    .line 73
    iput p4, p0, Lcom/akura/anime/objects/ListScrollListener;->previousTotalItemCount:I

    .line 74
    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->currentPage:I

    .line 78
    :cond_1
    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->mLastFirstVisibleItem:I

    if-le p2, v1, :cond_6

    .line 79
    iput v4, p0, Lcom/akura/anime/objects/ListScrollListener;->mScrolling:I

    .line 87
    :cond_2
    :goto_1
    iput p2, p0, Lcom/akura/anime/objects/ListScrollListener;->mLastFirstVisibleItem:I

    .line 94
    add-int v1, p2, p3

    iget v5, p0, Lcom/akura/anime/objects/ListScrollListener;->visibleThreshold:I

    add-int v0, v1, v5

    .line 95
    .local v0, "actualThreshold":I
    iget-boolean v1, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    if-nez v1, :cond_4

    if-le v0, p4, :cond_4

    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->mScrolling:I

    if-ne v1, v4, :cond_4

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    .local v2, "now":J
    iget-wide v6, p0, Lcom/akura/anime/objects/ListScrollListener;->lasttime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3

    iget-wide v6, p0, Lcom/akura/anime/objects/ListScrollListener;->lasttime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    .line 100
    :cond_3
    invoke-virtual {p0, v0}, Lcom/akura/anime/objects/ListScrollListener;->onMore(I)V

    .line 102
    iput-boolean v4, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    .line 103
    iput-wide v2, p0, Lcom/akura/anime/objects/ListScrollListener;->lasttime:J

    .line 107
    .end local v2    # "now":J
    :cond_4
    return-void

    .end local v0    # "actualThreshold":I
    :cond_5
    move v1, v5

    .line 52
    goto :goto_0

    .line 80
    :cond_6
    iget v1, p0, Lcom/akura/anime/objects/ListScrollListener;->mLastFirstVisibleItem:I

    if-ge p2, v1, :cond_2

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/akura/anime/objects/ListScrollListener;->mScrolling:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 112
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/akura/anime/objects/ListScrollListener;->loading:Z

    .line 42
    return-void
.end method
