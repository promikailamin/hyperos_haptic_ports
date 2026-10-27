.class public Landroid/hardware/location/ContextHubIntentEvent;
.super Ljava/lang/Object;
.source "ContextHubIntentEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mClientAuthorizationState:I

.field private final blacklist mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field private final blacklist mEventType:I

.field private final blacklist mNanoAppAbortCode:I

.field private final blacklist mNanoAppId:J

.field private final blacklist mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;I)V
    .registers 11

    .line 63
    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 65
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJ)V
    .registers 13

    .line 70
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 72
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJI)V
    .registers 14

    .line 84
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;)V
    .registers 14

    .line 77
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 79
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V
    .registers 8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 54
    iput p2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    .line 55
    iput-wide p3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    .line 56
    iput-object p5, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    .line 57
    iput p6, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    .line 58
    iput p7, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    .line 59
    return-void
.end method

.method public static whitelist fromIntent(Landroid/content/Intent;)Landroid/hardware/location/ContextHubIntentEvent;
    .registers 10

    .line 99
    const-string v0, "Intent cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string v0, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 102
    const-class v1, Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 103
    if-eqz v2, :cond_8e

    .line 107
    const-string v0, "android.hardware.location.extra.EVENT_TYPE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v3

    .line 109
    packed-switch v3, :pswitch_data_96

    .line 146
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent event type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :pswitch_37
    new-instance p0, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct {p0, v2, v3}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;I)V

    .line 143
    goto :goto_8d

    .line 117
    :pswitch_3d
    const-string v0, "android.hardware.location.extra.NANOAPP_ID"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getLongExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v4

    .line 118
    const/4 v0, 0x5

    if-ne v3, v0, :cond_65

    .line 119
    const-string v0, "android.hardware.location.extra.MESSAGE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 120
    const-class v1, Landroid/hardware/location/NanoAppMessage;

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/hardware/location/NanoAppMessage;

    .line 122
    if-eqz v6, :cond_5d

    .line 126
    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;)V

    .line 127
    move-object p0, v1

    goto :goto_8d

    .line 123
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NanoAppMessage extra was null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_65
    const/4 v0, 0x4

    if-ne v3, v0, :cond_75

    .line 128
    const-string v0, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v6

    .line 130
    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJI)V

    .line 131
    move-object p0, v1

    goto :goto_8d

    :cond_75
    const/4 v0, 0x7

    if-ne v3, v0, :cond_87

    .line 132
    const-string v0, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v8

    .line 134
    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v1 .. v8}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    .line 136
    move-object p0, v1

    goto :goto_8d

    .line 137
    :cond_87
    new-instance p0, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJ)V

    .line 139
    nop

    .line 149
    :goto_8d
    return-object p0

    .line 104
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextHubInfo extra was null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_37
        :pswitch_3d
    .end packed-switch
.end method

.method private static blacklist getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 3

    .line 292
    invoke-static {p0, p1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 293
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static blacklist getLongExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)J
    .registers 4

    .line 297
    invoke-static {p0, p1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    .line 298
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 286
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 289
    return-void

    .line 287
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent did not have extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 247
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 248
    return v0

    .line 251
    :cond_4
    nop

    .line 252
    instance-of v1, p1, Landroid/hardware/location/ContextHubIntentEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_6e

    .line 253
    check-cast p1, Landroid/hardware/location/ContextHubIntentEvent;

    .line 254
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getEventType()I

    move-result v1

    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    if-ne v1, v3, :cond_6e

    .line 255
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getContextHubInfo()Landroid/hardware/location/ContextHubInfo;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v1, v3}, Landroid/hardware/location/ContextHubInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 256
    nop

    .line 258
    :try_start_21
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_35

    .line 259
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_32

    move v1, v0

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    and-int/2addr v1, v0

    goto :goto_36

    .line 258
    :cond_35
    move v1, v0

    .line 261
    :goto_36
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_47

    .line 262
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppAbortCode()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    if-ne v3, v4, :cond_45

    move v3, v0

    goto :goto_46

    :cond_45
    move v3, v2

    :goto_46
    and-int/2addr v1, v3

    .line 264
    :cond_47
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_57

    .line 265
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppMessage()Landroid/hardware/location/NanoAppMessage;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v3, v4}, Landroid/hardware/location/NanoAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 267
    :cond_57
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6a

    .line 268
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getClientAuthorizationState()I

    move-result p1

    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I
    :try_end_62
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_21 .. :try_end_62} :catch_6c

    if-ne p1, v3, :cond_65

    goto :goto_66

    :cond_65
    move v0, v2

    :goto_66
    and-int p1, v1, v0

    move v2, p1

    goto :goto_6b

    .line 267
    :cond_6a
    move v2, v1

    .line 272
    :goto_6b
    goto :goto_6e

    .line 270
    :catch_6c
    move-exception p1

    .line 271
    nop

    .line 276
    :cond_6e
    :goto_6e
    return v2
.end method

.method public whitelist getClientAuthorizationState()I
    .registers 4

    .line 215
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 220
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    return v0

    .line 216
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke getClientAuthorizationState() on non-authorization event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContextHubInfo()Landroid/hardware/location/ContextHubInfo;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    return v0
.end method

.method public whitelist getNanoAppAbortCode()I
    .registers 4

    .line 187
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 191
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    return v0

    .line 188
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke getNanoAppAbortCode() on non-abort event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNanoAppId()J
    .registers 3

    .line 174
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    .line 178
    iget-wide v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    return-wide v0

    .line 175
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot invoke getNanoAppId() on Context Hub reset event"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNanoAppMessage()Landroid/hardware/location/NanoAppMessage;
    .registers 4

    .line 201
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 205
    iget-object v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    return-object v0

    .line 202
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke getNanoAppMessage() on non-message event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 281
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    iget-wide v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 281
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextHubIntentEvent[eventType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contextHubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 227
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_47

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nanoAppId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_47
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_65

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nanoAppAbortCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_65
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_83

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nanoAppMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_83
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a1

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientAuthState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
