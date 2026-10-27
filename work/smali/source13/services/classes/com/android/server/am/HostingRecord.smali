.class public final Lcom/android/server/am/HostingRecord;
.super Ljava/lang/Object;
.source "HostingRecord.java"


# static fields
.field private static final APP_ZYGOTE:I = 0x2

.field public static final HOSTING_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final HOSTING_TYPE_ADDED_APPLICATION:Ljava/lang/String; = "added application"

.field public static final HOSTING_TYPE_BACKUP:Ljava/lang/String; = "backup"

.field public static final HOSTING_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final HOSTING_TYPE_CONTENT_PROVIDER:Ljava/lang/String; = "content provider"

.field public static final HOSTING_TYPE_EMPTY:Ljava/lang/String; = ""

.field public static final HOSTING_TYPE_LINK_FAIL:Ljava/lang/String; = "link fail"

.field public static final HOSTING_TYPE_NEXT_ACTIVITY:Ljava/lang/String; = "next-activity"

.field public static final HOSTING_TYPE_NEXT_TOP_ACTIVITY:Ljava/lang/String; = "next-top-activity"

.field public static final HOSTING_TYPE_ON_HOLD:Ljava/lang/String; = "on-hold"

.field public static final HOSTING_TYPE_RESTART:Ljava/lang/String; = "restart"

.field public static final HOSTING_TYPE_SERVICE:Ljava/lang/String; = "service"

.field public static final HOSTING_TYPE_SYSTEM:Ljava/lang/String; = "system"

.field public static final HOSTING_TYPE_TOP_ACTIVITY:Ljava/lang/String; = "top-activity"

.field private static final REGULAR_ZYGOTE:I = 0x0

.field private static final WEBVIEW_ZYGOTE:I = 0x1


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mDefiningPackageName:Ljava/lang/String;

.field private final mDefiningProcessName:Ljava/lang/String;

.field private final mDefiningUid:I

.field private final mHostingName:Ljava/lang/String;

.field private final mHostingType:Ljava/lang/String;

.field private final mHostingZygote:I

.field private final mIsTopApp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .param p1, "hostingType"    # Ljava/lang/String;

    .line 84
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;
    .param p3, "hostingZygote"    # I

    .line 118
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 13
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;
    .param p3, "action"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;
    .param p3, "definingPackageName"    # Ljava/lang/String;
    .param p4, "definingUid"    # I
    .param p5, "definingProcessName"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 13
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;
    .param p3, "isTopApp"    # Z

    .line 107
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;
    .param p3, "hostingZygote"    # I

    .line 122
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;
    .param p3, "hostingZygote"    # I
    .param p4, "definingPackageName"    # Ljava/lang/String;
    .param p5, "definingUid"    # I
    .param p6, "isTopApp"    # Z
    .param p7, "definingProcessName"    # Ljava/lang/String;
    .param p8, "action"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 132
    iput p3, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 133
    iput-object p4, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    .line 134
    iput p5, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 135
    iput-boolean p6, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    .line 136
    iput-object p7, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    .line 137
    iput-object p8, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;
    .registers 14
    .param p0, "hostingName"    # Landroid/content/ComponentName;
    .param p1, "definingPackageName"    # Ljava/lang/String;
    .param p2, "definingUid"    # I
    .param p3, "definingProcessName"    # Ljava/lang/String;

    .line 212
    new-instance v9, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static byWebviewZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;
    .registers 14
    .param p0, "hostingName"    # Landroid/content/ComponentName;
    .param p1, "definingPackageName"    # Ljava/lang/String;
    .param p2, "definingUid"    # I
    .param p3, "definingProcessName"    # Ljava/lang/String;

    .line 198
    new-instance v9, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static getHostingTypeIdStatsd(Ljava/lang/String;)I
    .registers 16
    .param p0, "hostingType"    # Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    sparse-switch v0, :sswitch_data_cc

    :cond_1b
    goto/16 :goto_b6

    :sswitch_1d
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v5

    goto/16 :goto_b7

    :sswitch_29
    const-string v0, "added application"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v14

    goto/16 :goto_b7

    :sswitch_34
    const-string v0, "content provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v11

    goto/16 :goto_b7

    :sswitch_3f
    const-string/jumbo v0, "restart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v6

    goto/16 :goto_b7

    :sswitch_4b
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    goto/16 :goto_b7

    :sswitch_56
    const-string/jumbo v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v4

    goto :goto_b7

    :sswitch_61
    const-string/jumbo v0, "next-activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v8

    goto :goto_b7

    :sswitch_6c
    const-string/jumbo v0, "on-hold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v9

    goto :goto_b7

    :sswitch_77
    const-string v0, "backup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v13

    goto :goto_b7

    :sswitch_81
    const-string/jumbo v0, "next-top-activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v7

    goto :goto_b7

    :sswitch_8c
    const-string v0, "broadcast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v12

    goto :goto_b7

    :sswitch_96
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_b7

    :sswitch_a0
    const-string/jumbo v0, "link fail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v10

    goto :goto_b7

    :sswitch_ab
    const-string/jumbo v0, "top-activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v3

    goto :goto_b7

    :goto_b6
    const/4 v0, -0x1

    :goto_b7
    packed-switch v0, :pswitch_data_106

    .line 267
    return v1

    .line 265
    :pswitch_bb
    const/16 v0, 0xe

    return v0

    .line 263
    :pswitch_be
    return v2

    .line 261
    :pswitch_bf
    return v3

    .line 259
    :pswitch_c0
    return v4

    .line 257
    :pswitch_c1
    return v5

    .line 255
    :pswitch_c2
    return v6

    .line 253
    :pswitch_c3
    return v7

    .line 251
    :pswitch_c4
    return v8

    .line 249
    :pswitch_c5
    return v9

    .line 247
    :pswitch_c6
    return v10

    .line 245
    :pswitch_c7
    return v11

    .line 243
    :pswitch_c8
    return v12

    .line 241
    :pswitch_c9
    return v13

    .line 239
    :pswitch_ca
    return v14

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x66e29b79 -> :sswitch_ab
        -0x644efc7c -> :sswitch_a0
        -0x62b40cf1 -> :sswitch_96
        -0x607e173f -> :sswitch_8c
        -0x5af75edf -> :sswitch_81
        -0x533f8a3e -> :sswitch_77
        -0x51cc2413 -> :sswitch_6c
        -0x50ce7357 -> :sswitch_61
        -0x34e38dd1 -> :sswitch_56
        0x0 -> :sswitch_4b
        0x416a9e0f -> :sswitch_3f
        0x548ba9b8 -> :sswitch_34
        0x61951230 -> :sswitch_29
        0x7643c6b5 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bb
    .end packed-switch
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDefiningPackageName()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefiningProcessName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefiningUid()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    return-object v0
.end method

.method public isTopApp()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    return v0
.end method

.method public usesAppZygote()Z
    .registers 3

    .line 221
    iget v0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public usesWebviewZygote()Z
    .registers 3

    .line 228
    iget v0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
