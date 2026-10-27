.class public Lmiui/security/WakePathRuleInfo$UserSettings;
.super Ljava/lang/Object;
.source "WakePathRuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/WakePathRuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserSettings"
.end annotation


# static fields
.field public static final blacklist ACCEPT:I = 0x1

.field public static final blacklist REJECT:I = 0x2

.field public static final blacklist UNDEF:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
