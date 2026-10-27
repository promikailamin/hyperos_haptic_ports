.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy$ConversationSenders;,
        Landroid/app/NotificationManager$Policy$PrioritySenders;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALL_PRIORITY_CATEGORIES:[I

.field private static final greylist-max-o ALL_SUPPRESSED_EFFECTS:[I

.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final blacklist CONVERSATION_SENDERS_UNSET:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_CATEGORY_ALARMS:I = 0x20

.field public static final whitelist PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final whitelist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x100

.field public static final whitelist PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final whitelist PRIORITY_CATEGORY_MEDIA:I = 0x40

.field public static final whitelist PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final whitelist PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final whitelist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final whitelist PRIORITY_CATEGORY_SYSTEM:I = 0x80

.field public static final whitelist PRIORITY_SENDERS_ANY:I = 0x0

.field public static final whitelist PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final whitelist PRIORITY_SENDERS_STARRED:I = 0x2

.field public static final blacklist STATE_HAS_PRIORITY_CHANNELS:I = 0x1

.field public static final blacklist STATE_PRIORITY_CHANNELS_BLOCKED:I = 0x2

.field public static final greylist-max-o STATE_UNSET:I = -0x1

.field public static final greylist-max-o SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final whitelist SUPPRESSED_EFFECT_AMBIENT:I = 0x80

.field public static final whitelist SUPPRESSED_EFFECT_BADGE:I = 0x40

.field public static final whitelist SUPPRESSED_EFFECT_FULL_SCREEN_INTENT:I = 0x4

.field public static final whitelist SUPPRESSED_EFFECT_LIGHTS:I = 0x8

.field public static final whitelist SUPPRESSED_EFFECT_NOTIFICATION_LIST:I = 0x100

.field public static final whitelist SUPPRESSED_EFFECT_PEEK:I = 0x10

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_STATUS_BAR:I = 0x20


# instance fields
.field public final whitelist priorityCallSenders:I

.field public final whitelist priorityCategories:I

.field public final whitelist priorityConversationSenders:I

.field public final whitelist priorityMessageSenders:I

.field public final greylist-max-o state:I

.field public final whitelist suppressedVisualEffects:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2583
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    sput-object v1, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    .line 2727
    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    .line 3158
    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_18
    .array-data 4
        0x20
        0x40
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
        0x100
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor whitelist <init>(III)V
    .registers 11

    .line 2784
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2786
    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 12

    .line 2818
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2820
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 13

    .line 2861
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2863
    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 7

    .line 2867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2868
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2869
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2870
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2871
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2872
    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 2873
    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2874
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 2879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2879
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2881
    return-void
.end method

.method public static greylist-max-o areAllVisualEffectsSuppressed(I)Z
    .registers 4

    .line 3034
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 3035
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 3036
    and-int/2addr v2, p0

    if-nez v2, :cond_f

    .line 3037
    return v0

    .line 3034
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3040
    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    .line 3012
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-lez p3, :cond_10

    .line 3013
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_b

    .line 3014
    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3012
    :cond_b
    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 3017
    :cond_10
    return-void
.end method

.method public static blacklist conversationSendersToString(I)Ljava/lang/String;
    .registers 3

    .line 3145
    packed-switch p0, :pswitch_data_2c

    .line 3155
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidConversationType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3151
    :pswitch_1e
    const-string/jumbo p0, "none"

    return-object p0

    .line 3149
    :pswitch_22
    const-string p0, "important"

    return-object p0

    .line 3147
    :pswitch_25
    const-string p0, "anyone"

    return-object p0

    .line 3153
    :pswitch_28
    const-string/jumbo p0, "unset"

    return-object p0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_28
        :pswitch_3
        :pswitch_25
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method

.method private static greylist-max-o effectToString(I)Ljava/lang/String;
    .registers 3

    .line 3092
    sparse-switch p0, :sswitch_data_36

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3106
    :sswitch_17
    const-string p0, "SUPPRESSED_EFFECT_NOTIFICATION_LIST"

    return-object p0

    .line 3104
    :sswitch_1a
    const-string p0, "SUPPRESSED_EFFECT_AMBIENT"

    return-object p0

    .line 3102
    :sswitch_1d
    const-string p0, "SUPPRESSED_EFFECT_BADGE"

    return-object p0

    .line 3100
    :sswitch_20
    const-string p0, "SUPPRESSED_EFFECT_STATUS_BAR"

    return-object p0

    .line 3098
    :sswitch_23
    const-string p0, "SUPPRESSED_EFFECT_PEEK"

    return-object p0

    .line 3096
    :sswitch_26
    const-string p0, "SUPPRESSED_EFFECT_LIGHTS"

    return-object p0

    .line 3094
    :sswitch_29
    const-string p0, "SUPPRESSED_EFFECT_FULL_SCREEN_INTENT"

    return-object p0

    .line 3110
    :sswitch_2c
    const-string p0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object p0

    .line 3108
    :sswitch_2f
    const-string p0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object p0

    .line 3112
    :sswitch_32
    const-string p0, "SUPPRESSED_EFFECTS_UNSET"

    return-object p0

    nop

    :sswitch_data_36
    .sparse-switch
        -0x1 -> :sswitch_32
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x8 -> :sswitch_26
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1d
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public static greylist-max-o getAllSuppressedVisualEffects()I
    .registers 3

    .line 3023
    nop

    .line 3024
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_10

    .line 3025
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 3024
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3027
    :cond_10
    return v1
.end method

.method public static blacklist policyState(ZZ)I
    .registers 2

    .line 3285
    nop

    .line 3286
    if-eqz p0, :cond_5

    .line 3287
    const/4 p0, 0x1

    goto :goto_6

    .line 3286
    :cond_5
    const/4 p0, 0x0

    .line 3289
    :goto_6
    if-nez p1, :cond_a

    .line 3290
    or-int/lit8 p0, p0, 0x2

    .line 3292
    :cond_a
    return p0
.end method

.method public static whitelist priorityCategoriesToString(I)Ljava/lang/String;
    .registers 6

    .line 3074
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 3075
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3076
    const/4 v1, 0x0

    :goto_b
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2f

    .line 3077
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    aget v2, v2, v1

    .line 3078
    and-int v4, p0, v2

    if-eqz v4, :cond_2a

    .line 3079
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3080
    :cond_23
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    :cond_2a
    not-int v2, v2

    and-int/2addr p0, v2

    .line 3076
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3084
    :cond_2f
    if-eqz p0, :cond_43

    .line 3085
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3086
    :cond_3a
    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3088
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o priorityCategoryToString(I)Ljava/lang/String;
    .registers 3

    .line 3118
    sparse-switch p0, :sswitch_data_32

    .line 3128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3127
    :sswitch_17
    const-string p0, "PRIORITY_CATEGORY_CONVERSATIONS"

    return-object p0

    .line 3126
    :sswitch_1a
    const-string p0, "PRIORITY_CATEGORY_SYSTEM"

    return-object p0

    .line 3125
    :sswitch_1d
    const-string p0, "PRIORITY_CATEGORY_MEDIA"

    return-object p0

    .line 3124
    :sswitch_20
    const-string p0, "PRIORITY_CATEGORY_ALARMS"

    return-object p0

    .line 3123
    :sswitch_23
    const-string p0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object p0

    .line 3122
    :sswitch_26
    const-string p0, "PRIORITY_CATEGORY_CALLS"

    return-object p0

    .line 3121
    :sswitch_29
    const-string p0, "PRIORITY_CATEGORY_MESSAGES"

    return-object p0

    .line 3120
    :sswitch_2c
    const-string p0, "PRIORITY_CATEGORY_EVENTS"

    return-object p0

    .line 3119
    :sswitch_2f
    const-string p0, "PRIORITY_CATEGORY_REMINDERS"

    return-object p0

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x8 -> :sswitch_26
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1d
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public static whitelist prioritySendersToString(I)Ljava/lang/String;
    .registers 3

    .line 3133
    packed-switch p0, :pswitch_data_20

    .line 3137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3136
    :pswitch_17
    const-string p0, "PRIORITY_SENDERS_STARRED"

    return-object p0

    .line 3135
    :pswitch_1a
    const-string p0, "PRIORITY_SENDERS_CONTACTS"

    return-object p0

    .line 3134
    :pswitch_1d
    const-string p0, "PRIORITY_SENDERS_ANY"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static whitelist suppressedEffectsToString(I)Ljava/lang/String;
    .registers 6

    .line 3056
    if-gtz p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 3057
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3058
    const/4 v1, 0x0

    :goto_b
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2f

    .line 3059
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v2, v2, v1

    .line 3060
    and-int v4, p0, v2

    if-eqz v4, :cond_2a

    .line 3061
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3062
    :cond_23
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    :cond_2a
    not-int v2, v2

    and-int/2addr p0, v2

    .line 3058
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3066
    :cond_2f
    if-eqz p0, :cond_43

    .line 3067
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3068
    :cond_3a
    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3070
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist suppressedVisualEffectsEqual(II)Z
    .registers 7

    .line 2920
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 2921
    return v0

    .line 2924
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_a

    .line 2925
    or-int/lit8 p1, p1, 0x10

    .line 2927
    :cond_a
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_14

    .line 2928
    or-int/lit8 p1, p1, 0x4

    .line 2929
    or-int/lit8 p1, p1, 0x8

    .line 2930
    or-int/lit16 p1, p1, 0x80

    .line 2933
    :cond_14
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1a

    .line 2934
    or-int/lit8 p2, p2, 0x10

    .line 2936
    :cond_1a
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    .line 2937
    or-int/lit8 p2, p2, 0x4

    .line 2938
    or-int/lit8 p2, p2, 0x8

    .line 2939
    or-int/lit16 p2, p2, 0x80

    .line 2942
    :cond_24
    and-int/lit8 v1, p1, 0x2

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_35

    .line 2944
    if-eqz v1, :cond_2f

    .line 2945
    move v1, p2

    goto :goto_30

    :cond_2f
    move v1, p1

    .line 2946
    :goto_30
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_35

    .line 2947
    return v3

    .line 2951
    :cond_35
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p2, 0x1

    if-eq v1, v2, :cond_4d

    .line 2953
    if-eqz v1, :cond_3f

    .line 2954
    move v1, p2

    goto :goto_40

    :cond_3f
    move v1, p1

    .line 2955
    :goto_40
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_4c

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_4c

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4d

    .line 2958
    :cond_4c
    return v3

    .line 2962
    :cond_4d
    and-int/lit8 p1, p1, -0x3

    and-int/lit8 p1, p1, -0x2

    .line 2965
    and-int/lit8 p2, p2, -0x3

    and-int/lit8 p2, p2, -0x2

    .line 2968
    if-ne p1, p2, :cond_58

    goto :goto_59

    :cond_58
    move v0, v3

    :goto_59
    return v0
.end method

.method private static greylist-max-o toggleEffects(I[IZ)I
    .registers 5

    .line 3044
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 3045
    aget v1, p1, v0

    .line 3046
    if-eqz p2, :cond_a

    .line 3047
    or-int/2addr p0, v1

    goto :goto_c

    .line 3049
    :cond_a
    not-int v1, v1

    and-int/2addr p0, v1

    .line 3044
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3052
    :cond_f
    return p0
.end method


# virtual methods
.method public blacklist allowAlarms()Z
    .registers 2

    .line 3173
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowCalls()Z
    .registers 2

    .line 3193
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowCallsFrom()I
    .registers 2

    .line 3219
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0
.end method

.method public blacklist allowConversations()Z
    .registers 2

    .line 3198
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowConversationsFrom()I
    .registers 2

    .line 3231
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return v0
.end method

.method public blacklist allowEvents()Z
    .registers 2

    .line 3208
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMedia()Z
    .registers 2

    .line 3178
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMessages()Z
    .registers 2

    .line 3203
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMessagesFrom()I
    .registers 2

    .line 3225
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0
.end method

.method public blacklist allowPriorityChannels()Z
    .registers 4

    .line 3272
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    .line 3273
    return v2

    .line 3275
    :cond_7
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public blacklist allowReminders()Z
    .registers 3

    .line 3213
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist allowRepeatCallers()Z
    .registers 2

    .line 3188
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowSystem()Z
    .registers 2

    .line 3183
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationManager$Policy;
    .registers 3

    .line 3300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3302
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3303
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3304
    new-instance v1, Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v0}, Landroid/app/NotificationManager$Policy;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 3306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3304
    return-object v1

    .line 3306
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3307
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2895
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 3000
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3002
    const-wide v0, 0x20e00000001L

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {p1, v0, v1, v2}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3003
    const-wide v0, 0x10e00000002L

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3004
    const-wide v0, 0x10e00000003L

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3005
    const-wide v0, 0x20e00000004L

    iget v2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {p1, v0, v1, v2}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3008
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3009
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2906
    instance-of v0, p1, Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2907
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2908
    :cond_a
    check-cast p1, Landroid/app/NotificationManager$Policy;

    .line 2909
    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v2, v3, :cond_36

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v2, v3, :cond_36

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v3, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2912
    invoke-direct {p0, v2, v3}, Landroid/app/NotificationManager$Policy;->suppressedVisualEffectsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, p1, Landroid/app/NotificationManager$Policy;->state:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v2, v3, :cond_36

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p1, v2, :cond_36

    move v1, v0

    goto :goto_37

    :cond_36
    nop

    .line 2909
    :goto_37
    return v1
.end method

.method public blacklist hasPriorityChannels()Z
    .registers 3

    .line 3280
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 2900
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2901
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 2900
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist showAmbient()Z
    .registers 2

    .line 3256
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showBadges()Z
    .registers 2

    .line 3261
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showFullScreenIntents()Z
    .registers 2

    .line 3236
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showInNotificationList()Z
    .registers 2

    .line 3266
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showLights()Z
    .registers 2

    .line 3241
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showPeeking()Z
    .registers 2

    .line 3246
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showStatusBarIcons()Z
    .registers 2

    .line 3251
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 2973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationManager.Policy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2974
    const-string/jumbo v1, "priorityCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2975
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2976
    const-string v1, ",priorityCallSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2977
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2978
    const-string v1, ",priorityMessageSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2979
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2980
    const-string v1, ",priorityConvSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2981
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->conversationSendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2982
    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2983
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2984
    const-string v1, ",hasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2985
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    const-string/jumbo v2, "true"

    const-string v3, "false"

    const-string/jumbo v4, "unset"

    const/4 v5, -0x1

    if-ne v1, v5, :cond_71

    .line 2986
    move-object v1, v4

    goto :goto_7a

    .line 2987
    :cond_71
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_79

    .line 2988
    move-object v1, v2

    goto :goto_7a

    .line 2989
    :cond_79
    move-object v1, v3

    .line 2985
    :goto_7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2990
    const-string v1, ",allowPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2991
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v1, v5, :cond_8a

    .line 2992
    move-object v2, v4

    goto :goto_92

    .line 2993
    :cond_8a
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v1

    if-eqz v1, :cond_91

    goto :goto_92

    :cond_91
    move-object v2, v3

    .line 2991
    :goto_92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2994
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2973
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2885
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2886
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2887
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2888
    iget p2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2889
    iget p2, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2890
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    return-void
.end method
