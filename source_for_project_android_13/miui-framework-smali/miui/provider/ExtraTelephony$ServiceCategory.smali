.class public Lmiui/provider/ExtraTelephony$ServiceCategory;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCategory"
.end annotation


# static fields
.field public static final blacklist DEFAULT_SERVICE_NUMBER:I = 0x1

.field public static final blacklist FINANCE_NUMBER:I = 0x2

.field public static final blacklist NOT_SERVICE_NUMBER:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
