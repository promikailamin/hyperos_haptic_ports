.class public interface abstract Landroid/content/pm/verify/domain/DomainVerificationState;
.super Ljava/lang/Object;
.source "DomainVerificationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationState$State;
    }
.end annotation


# static fields
.field public static final blacklist STATE_APPROVED:I = 0x2

.field public static final blacklist STATE_DENIED:I = 0x3

.field public static final blacklist STATE_FIRST_VERIFIER_DEFINED:I = 0x400

.field public static final blacklist STATE_LEGACY_FAILURE:I = 0x6

.field public static final blacklist STATE_MIGRATED:I = 0x4

.field public static final blacklist STATE_NO_RESPONSE:I = 0x0

.field public static final blacklist STATE_PRE_VERIFIED:I = 0x8

.field public static final blacklist STATE_RESTORED:I = 0x5

.field public static final blacklist STATE_SUCCESS:I = 0x1

.field public static final blacklist STATE_SYS_CONFIG:I = 0x7


# direct methods
.method public static blacklist convertToInfoState(I)I
    .registers 2

    .line 223
    const/16 v0, 0x400

    if-lt p0, v0, :cond_5

    .line 224
    return p0

    .line 225
    :cond_5
    if-nez p0, :cond_9

    .line 226
    const/4 p0, 0x0

    return p0

    .line 227
    :cond_9
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 228
    return v0

    .line 229
    :cond_d
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 230
    const/4 p0, 0x2

    return p0

    .line 231
    :cond_15
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 232
    const/4 p0, 0x4

    return p0

    .line 234
    :cond_1d
    const/4 p0, 0x3

    return p0
.end method

.method public static blacklist isDefault(I)Z
    .registers 1

    .line 138
    sparse-switch p0, :sswitch_data_8

    .line 150
    const/4 p0, 0x0

    return p0

    .line 142
    :sswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist isModifiable(I)Z
    .registers 4

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_e

    .line 195
    const/16 v2, 0x400

    if-lt p0, v2, :cond_d

    move v0, v1

    goto :goto_d

    .line 193
    :pswitch_b
    return v0

    .line 189
    :pswitch_c
    return v1

    .line 195
    :cond_d
    :goto_d
    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist isVerified(I)Z
    .registers 1

    .line 159
    packed-switch p0, :pswitch_data_8

    .line 171
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 166
    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist shouldMigrate(I)Z
    .registers 1

    .line 204
    packed-switch p0, :pswitch_data_8

    .line 217
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 211
    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist stateToDebugString(I)Ljava/lang/String;
    .registers 1

    .line 109
    packed-switch p0, :pswitch_data_2a

    .line 129
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :pswitch_8
    const-string/jumbo p0, "pre_verified"

    return-object p0

    .line 125
    :pswitch_c
    const-string/jumbo p0, "system_configured"

    return-object p0

    .line 123
    :pswitch_10
    const-string/jumbo p0, "legacy_failure"

    return-object p0

    .line 121
    :pswitch_14
    const-string/jumbo p0, "restored"

    return-object p0

    .line 119
    :pswitch_18
    const-string/jumbo p0, "migrated"

    return-object p0

    .line 117
    :pswitch_1c
    const-string p0, "denied"

    return-object p0

    .line 115
    :pswitch_1f
    const-string p0, "approved"

    return-object p0

    .line 113
    :pswitch_22
    const-string/jumbo p0, "verified"

    return-object p0

    .line 111
    :pswitch_26
    const-string/jumbo p0, "none"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method
