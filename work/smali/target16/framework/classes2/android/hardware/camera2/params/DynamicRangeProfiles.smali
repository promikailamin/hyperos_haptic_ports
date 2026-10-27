.class public final Landroid/hardware/camera2/params/DynamicRangeProfiles;
.super Ljava/lang/Object;
.source "DynamicRangeProfiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/DynamicRangeProfiles$Profile;
    }
.end annotation


# static fields
.field public static final whitelist DOLBY_VISION_10B_HDR_OEM:J = 0x40L

.field public static final whitelist DOLBY_VISION_10B_HDR_OEM_PO:J = 0x80L

.field public static final whitelist DOLBY_VISION_10B_HDR_REF:J = 0x10L

.field public static final whitelist DOLBY_VISION_10B_HDR_REF_PO:J = 0x20L

.field public static final whitelist DOLBY_VISION_8B_HDR_OEM:J = 0x400L

.field public static final whitelist DOLBY_VISION_8B_HDR_OEM_PO:J = 0x800L

.field public static final whitelist DOLBY_VISION_8B_HDR_REF:J = 0x100L

.field public static final whitelist DOLBY_VISION_8B_HDR_REF_PO:J = 0x200L

.field public static final whitelist HDR10:J = 0x4L

.field public static final whitelist HDR10_PLUS:J = 0x8L

.field public static final whitelist HLG10:J = 0x2L

.field public static final whitelist PUBLIC_MAX:J = 0x1000L

.field public static final whitelist STANDARD:J = 0x1L


# instance fields
.field private final blacklist mLookahedLatencyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProfileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>([J)V
    .registers 14

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    .line 199
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_db

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_18
    array-length v2, p1

    const-wide/16 v3, 0x1

    if-ge v1, v2, :cond_7e

    .line 205
    aget-wide v5, p1, v1

    invoke-static {v5, v6}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->checkProfileValue(J)V

    .line 207
    aget-wide v5, p1, v1

    cmp-long v2, v5, v3

    if-eqz v2, :cond_76

    .line 211
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 213
    add-int/lit8 v5, v1, 0x1

    aget-wide v6, p1, v5

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-eqz v6, :cond_4f

    .line 214
    nop

    :goto_39
    const-wide/16 v10, 0x1000

    cmp-long v6, v3, v10

    if-gez v6, :cond_4f

    .line 215
    aget-wide v10, p1, v5

    and-long/2addr v10, v3

    cmp-long v6, v10, v8

    if-eqz v6, :cond_4d

    .line 216
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_4d
    shl-long/2addr v3, v7

    goto :goto_39

    .line 221
    :cond_4f
    iget-object v3, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v2, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    aget-wide v4, p1, v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6b

    goto :goto_6c

    :cond_6b
    move v7, v0

    :goto_6c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v1, v1, 0x3

    goto :goto_18

    .line 208
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dynamic range profile map must not include a STANDARD profile entry!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_7e
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 229
    iget-object v5, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c0

    iget-object v5, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 230
    :cond_c0
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_c3
    goto :goto_94

    .line 234
    :cond_c4
    iget-object v1, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void

    .line 200
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dynamic range profile map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not even!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkProfileValue(J)V
    .registers 5

    .line 243
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x800

    cmp-long v0, p0, v0

    if-nez v0, :cond_49

    goto :goto_62

    .line 250
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_62
    :goto_62
    return-void
.end method


# virtual methods
.method public whitelist getProfileCaptureRequestConstraints(J)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 290
    if-eqz p1, :cond_13

    .line 294
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 291
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported profile!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSupportedProfiles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isExtraLatencyPresent(J)Z
    .registers 4

    .line 315
    iget-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 316
    if-eqz p1, :cond_13

    .line 320
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 317
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported profile!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
