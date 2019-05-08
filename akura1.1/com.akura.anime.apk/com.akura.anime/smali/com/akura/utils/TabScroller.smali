.class public Lcom/akura/utils/TabScroller;
.super Ljava/lang/Object;
.source "TabScroller.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Scroller"


# instance fields
.field Timer_Tick:Ljava/lang/Runnable;

.field Timer_Wake:Ljava/lang/Runnable;

.field private mActivity:Landroid/app/Activity;

.field private mIncr:Z

.field private mScroller:Landroid/widget/HorizontalScrollView;

.field private scrollMax:I

.field private scrollPos:I

.field private scrollTimer:Ljava/util/Timer;

.field private sleepTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/HorizontalScrollView;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "sview"    # Landroid/widget/HorizontalScrollView;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    .line 18
    iput-object v0, p0, Lcom/akura/utils/TabScroller;->scrollTimer:Ljava/util/Timer;

    .line 19
    iput-object v0, p0, Lcom/akura/utils/TabScroller;->sleepTimer:Ljava/util/Timer;

    .line 69
    new-instance v0, Lcom/akura/utils/TabScroller$1;

    invoke-direct {v0, p0}, Lcom/akura/utils/TabScroller$1;-><init>(Lcom/akura/utils/TabScroller;)V

    iput-object v0, p0, Lcom/akura/utils/TabScroller;->Timer_Tick:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/akura/utils/TabScroller$2;

    invoke-direct {v0, p0}, Lcom/akura/utils/TabScroller$2;-><init>(Lcom/akura/utils/TabScroller;)V

    iput-object v0, p0, Lcom/akura/utils/TabScroller;->Timer_Wake:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lcom/akura/utils/TabScroller;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    .line 27
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 28
    iput v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    .line 29
    const/16 v0, 0x800

    iput v0, p0, Lcom/akura/utils/TabScroller;->scrollMax:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/akura/utils/TabScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/utils/TabScroller;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->moveScrollView()V

    return-void
.end method

.method static synthetic access$100(Lcom/akura/utils/TabScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/utils/TabScroller;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->resume()V

    return-void
.end method

.method static synthetic access$200(Lcom/akura/utils/TabScroller;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/akura/utils/TabScroller;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private moveScrollView()V
    .locals 9

    .prologue
    const/16 v8, 0x1388

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 137
    iget-boolean v1, p0, Lcom/akura/utils/TabScroller;->mIncr:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    .line 141
    iget v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    iget v2, p0, Lcom/akura/utils/TabScroller;->scrollMax:I

    if-lt v1, v2, :cond_2

    .line 143
    iput-boolean v6, p0, Lcom/akura/utils/TabScroller;->mIncr:Z

    .line 145
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopScroll()V

    .line 147
    invoke-direct {p0, v8}, Lcom/akura/utils/TabScroller;->startSleep(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-double v2, v1

    sub-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    .line 155
    iget v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    if-gtz v1, :cond_2

    .line 157
    iput-boolean v7, p0, Lcom/akura/utils/TabScroller;->mIncr:Z

    .line 159
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopScroll()V

    .line 161
    invoke-direct {p0, v8}, Lcom/akura/utils/TabScroller;->startSleep(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    iget v2, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 168
    iget-object v1, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 169
    .local v0, "x":I
    iget v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    if-eq v0, v1, :cond_0

    .line 171
    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 173
    iput v0, p0, Lcom/akura/utils/TabScroller;->scrollMax:I

    goto :goto_0

    .line 175
    :cond_3
    if-nez v0, :cond_0

    .line 177
    iget v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    if-ne v1, v7, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/akura/utils/TabScroller;->stop()V

    goto :goto_0
.end method

.method private resume()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopScroll()V

    .line 66
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->startScroll()V

    .line 67
    return-void
.end method

.method private startScroll()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1e

    .line 105
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/akura/utils/TabScroller;->scrollTimer:Ljava/util/Timer;

    .line 107
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->scrollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/akura/utils/TabScroller$4;

    invoke-direct {v1, p0}, Lcom/akura/utils/TabScroller$4;-><init>(Lcom/akura/utils/TabScroller;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 115
    return-void
.end method

.method private startSleep(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/akura/utils/TabScroller;->sleepTimer:Ljava/util/Timer;

    .line 91
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->sleepTimer:Ljava/util/Timer;

    new-instance v1, Lcom/akura/utils/TabScroller$3;

    invoke-direct {v1, p0}, Lcom/akura/utils/TabScroller$3;-><init>(Lcom/akura/utils/TabScroller;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 99
    return-void
.end method

.method private stopScroll()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->scrollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->scrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/utils/TabScroller;->scrollTimer:Ljava/util/Timer;

    .line 124
    :cond_0
    return-void
.end method

.method private stopSleep()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->sleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->sleepTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/utils/TabScroller;->sleepTimer:Ljava/util/Timer;

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public restart()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopScroll()V

    .line 49
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopSleep()V

    .line 51
    const/16 v0, 0x800

    iput v0, p0, Lcom/akura/utils/TabScroller;->scrollMax:I

    .line 53
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/akura/utils/TabScroller;->startSleep(I)V

    .line 54
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopScroll()V

    .line 35
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopSleep()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/utils/TabScroller;->mIncr:Z

    .line 38
    iput v2, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    .line 39
    const/16 v0, 0x800

    iput v0, p0, Lcom/akura/utils/TabScroller;->scrollMax:I

    .line 41
    iget-object v0, p0, Lcom/akura/utils/TabScroller;->mScroller:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/akura/utils/TabScroller;->scrollPos:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 43
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/akura/utils/TabScroller;->startSleep(I)V

    .line 44
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopScroll()V

    .line 59
    invoke-direct {p0}, Lcom/akura/utils/TabScroller;->stopSleep()V

    .line 60
    return-void
.end method
