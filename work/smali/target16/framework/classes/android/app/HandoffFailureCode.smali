.class public final Landroid/app/HandoffFailureCode;
.super Ljava/lang/Object;
.source "HandoffFailureCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/HandoffFailureCode$FailureCode;
    }
.end annotation


# static fields
.field public static final blacklist HANDOFF_FAILURE_APP_DID_NOT_REPORT_HANDOFF_DATA:I = 0x7

.field public static final blacklist HANDOFF_FAILURE_EMPTY_TASK:I = 0x5

.field public static final blacklist HANDOFF_FAILURE_INTERNAL_ERROR:I = 0x4

.field public static final blacklist HANDOFF_FAILURE_TIMEOUT:I = 0x1

.field public static final blacklist HANDOFF_FAILURE_UNKNOWN_TASK:I = 0x3

.field public static final blacklist HANDOFF_FAILURE_UNSUPPORTED_DEVICE:I = 0x2

.field public static final blacklist HANDOFF_FAILURE_UNSUPPORTED_TASK:I = 0x6


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
