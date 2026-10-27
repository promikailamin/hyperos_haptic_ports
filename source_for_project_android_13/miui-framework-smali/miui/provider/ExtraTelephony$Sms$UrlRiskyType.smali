.class public final Lmiui/provider/ExtraTelephony$Sms$UrlRiskyType;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlRiskyType"
.end annotation


# static fields
.field public static final blacklist URL_FRAUD_DANGEROUS:I = 0x3

.field public static final blacklist URL_RISKY:I = 0x2

.field public static final blacklist URL_SAFE:I = 0x0

.field public static final blacklist URL_SUSPICIOUS:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
