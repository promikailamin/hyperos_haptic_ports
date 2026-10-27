.class public final Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 988
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSpanIndex(II)I
    .registers 3

    .line 996
    rem-int/2addr p1, p2

    return p1
.end method

.method public blacklist getSpanSize(I)I
    .registers 2

    .line 991
    const/4 p1, 0x1

    return p1
.end method
