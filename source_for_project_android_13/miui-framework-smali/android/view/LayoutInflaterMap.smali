.class public Landroid/view/LayoutInflaterMap;
.super Ljava/lang/Object;
.source "LayoutInflaterMap.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getResourceId(Landroid/content/Context;I)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I

    .line 11
    return p1
.end method
