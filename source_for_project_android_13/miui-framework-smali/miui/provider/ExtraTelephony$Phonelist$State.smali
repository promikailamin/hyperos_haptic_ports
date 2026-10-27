.class public final Lmiui/provider/ExtraTelephony$Phonelist$State;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Phonelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final blacklist ALL:I = 0x0

.field public static final blacklist CALL:I = 0x2

.field public static final blacklist MSG:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
