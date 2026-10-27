.class public Lmiui/app/ToggleManagerCompatibility$Point;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public blacklist mHeight:I

.field public blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
