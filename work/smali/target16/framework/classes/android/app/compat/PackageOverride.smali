.class public final Landroid/app/compat/PackageOverride;
.super Ljava/lang/Object;
.source "PackageOverride.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/compat/PackageOverride$Builder;,
        Landroid/app/compat/PackageOverride$EvaluatedOverride;
    }
.end annotation


# static fields
.field public static final blacklist VALUE_DISABLED:I = 0x2

.field public static final blacklist VALUE_ENABLED:I = 0x1

.field public static final blacklist VALUE_UNDEFINED:I


# instance fields
.field private final blacklist mEnabled:Z

.field private final blacklist mMaxVersionCode:J

.field private final blacklist mMinVersionCode:J


# direct methods
.method private constructor blacklist <init>(JJZ)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    .line 79
    iput-wide p3, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    .line 80
    iput-boolean p5, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(JJZLandroid/app/compat/PackageOverride-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/compat/PackageOverride;-><init>(JJZ)V

    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/compat/PackageOverride;
    .registers 7

    .line 139
    new-instance v0, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/compat/PackageOverride;-><init>(JJZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 145
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 146
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 147
    :cond_12
    check-cast p1, Landroid/app/compat/PackageOverride;

    .line 148
    iget-wide v2, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    iget-wide v4, p1, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    iget-wide v2, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    iget-wide v4, p1, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    iget-boolean v2, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    iget-boolean p1, p1, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    .line 146
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist evaluate(J)I
    .registers 5

    .line 89
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_14

    .line 90
    iget-boolean p1, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x2

    :goto_13
    return p1

    .line 92
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist evaluateForAllVersions()I
    .registers 5

    .line 101
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 102
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x2

    :goto_1a
    return v0

    .line 104
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaxVersionCode()J
    .registers 3

    .line 122
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    return-wide v0
.end method

.method public whitelist getMinVersionCode()J
    .registers 3

    .line 113
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 155
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 161
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 162
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1a
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%d,%d,%b]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 132
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMinVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Landroid/app/compat/PackageOverride;->mMaxVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-boolean v0, p0, Landroid/app/compat/PackageOverride;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    return-void
.end method
