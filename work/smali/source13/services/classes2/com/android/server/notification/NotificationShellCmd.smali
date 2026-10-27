.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n  enhance_log [true|false]\n"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private mChannel:Landroid/app/NotificationChannel;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/notification/NotificationManagerService;

    .line 123
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 125
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 127
    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .registers 33
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 485
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 486
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 487
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v11, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    .line 490
    .local v13, "builder":Landroid/app/Notification$Builder;
    const/4 v0, 0x0

    .line 491
    .local v0, "verbose":Z
    const/4 v3, 0x0

    .line 492
    .local v3, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    const/4 v4, 0x0

    .line 493
    .local v4, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    const/4 v5, 0x0

    .line 494
    .local v5, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const/4 v6, 0x0

    .line 495
    .local v6, "mediaStyle":Landroid/app/Notification$MediaStyle;
    const/4 v7, 0x0

    .line 497
    .local v7, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/4 v8, 0x0

    move v14, v0

    move-object v15, v3

    move-object v9, v4

    move-object/from16 v16, v6

    move-object v6, v8

    move-object v8, v5

    .line 498
    .end local v0    # "verbose":Z
    .end local v3    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v4    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v5    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v6, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v8, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v9, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v14, "verbose":Z
    .local v15, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .local v16, "mediaStyle":Landroid/app/Notification$MediaStyle;
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "opt":Ljava/lang/String;
    const-string/jumbo v3, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    if-eqz v0, :cond_4c5

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "large":Z
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x4

    const/16 v20, 0x3

    sparse-switch v18, :sswitch_data_5ac

    :cond_3d
    goto/16 :goto_199

    :sswitch_3f
    const-string v4, "large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x9

    goto/16 :goto_19a

    :sswitch_4b
    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x1

    goto/16 :goto_19a

    :sswitch_56
    const-string v4, "--line"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x18

    goto/16 :goto_19a

    :sswitch_62
    const-string v4, "--icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0xb

    goto/16 :goto_19a

    :sswitch_6e
    const-string v4, "--help"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x1c

    goto/16 :goto_19a

    :sswitch_7a
    const-string v4, "--bigtext"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x15

    goto/16 :goto_19a

    :sswitch_86
    const-string v4, "--bigText"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x14

    goto/16 :goto_19a

    :sswitch_92
    const-string v4, "--largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x7

    goto/16 :goto_19a

    :sswitch_9d
    const-string v4, "--intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x10

    goto/16 :goto_19a

    :sswitch_a9
    const-string v4, "--picture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x17

    goto/16 :goto_19a

    :sswitch_b5
    const-string v4, "largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x8

    goto/16 :goto_19a

    :sswitch_c1
    const-string v4, "--content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0xe

    goto/16 :goto_19a

    :sswitch_cd
    const-string v4, "--big-text"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x16

    goto/16 :goto_19a

    :sswitch_d9
    const-string/jumbo v4, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move/from16 v4, v19

    goto/16 :goto_19a

    :sswitch_e6
    const-string v4, "--wtf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x1d

    goto/16 :goto_19a

    :sswitch_f2
    const-string v4, "icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0xc

    goto/16 :goto_19a

    :sswitch_fe
    const-string v4, "-v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x0

    goto/16 :goto_19a

    :sswitch_109
    const-string v4, "-t"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x2

    goto/16 :goto_19a

    :sswitch_114
    const-string v4, "-i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0xa

    goto/16 :goto_19a

    :sswitch_120
    const-string v4, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x1b

    goto/16 :goto_19a

    :sswitch_12c
    const-string v4, "-c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0xd

    goto/16 :goto_19a

    :sswitch_138
    const-string v4, "-S"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x12

    goto :goto_19a

    :sswitch_143
    const-string v4, "-I"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x5

    goto :goto_19a

    :sswitch_14d
    const-string v4, "--large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v4, 0x6

    goto :goto_19a

    :sswitch_157
    const-string v4, "--conversation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x1a

    goto :goto_19a

    :sswitch_162
    const-string v4, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x11

    goto :goto_19a

    :sswitch_16d
    const-string v4, "content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0xf

    goto :goto_19a

    :sswitch_178
    const-string v4, "--title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move/from16 v4, v20

    goto :goto_19a

    :sswitch_183
    const-string v4, "--style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x13

    goto :goto_19a

    :sswitch_18e
    const-string v4, "--message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x19

    goto :goto_19a

    :goto_199
    const/4 v4, -0x1

    :goto_19a
    packed-switch v4, :pswitch_data_626

    .line 660
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    const/4 v4, 0x0

    return v4

    .line 650
    :pswitch_1a2
    if-eqz v7, :cond_1b5

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 655
    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_4b0

    .line 651
    :cond_1b5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "--conversation requires --style messaging"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 632
    :pswitch_1bd
    if-eqz v7, :cond_227

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "arg":Ljava/lang/String;
    const-string v4, ":"

    move/from16 v23, v0

    const/4 v0, 0x2

    .end local v0    # "large":Z
    .local v23, "large":Z
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "parts":[Ljava/lang/String;
    array-length v0, v4

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "arg":Ljava/lang/String;
    .local v17, "arg":Ljava/lang/String;
    if-le v0, v3, :cond_1ec

    .line 639
    aget-object v0, v4, v3

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v24, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v25, "opt":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_4b0

    .line 642
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_1ec
    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x0

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    aget-object v0, v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v18, v4

    const/4 v3, 0x2

    .end local v4    # "parts":[Ljava/lang/String;
    .local v18, "parts":[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 644
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v4, v20

    const-string v19, "Them"

    const/16 v22, 0x1

    aput-object v19, v4, v22

    .line 646
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    rem-int/lit8 v19, v19, 0x2

    aget-object v3, v4, v19

    .line 642
    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 648
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_4b0

    .line 633
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_227
    move/from16 v23, v0

    .end local v0    # "large":Z
    .restart local v23    # "large":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--message requires --style messaging"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    .end local v23    # "large":Z
    .restart local v0    # "large":Z
    :pswitch_231
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_24a

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 630
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_4b0

    .line 627
    :cond_24a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--line requires --style inbox"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_252
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v15, :cond_2b7

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "pictureSpec":Ljava/lang/String;
    invoke-virtual {v1, v12, v0}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 615
    .local v3, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_29c

    .line 618
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 619
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_280

    .line 620
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_4b0

    .line 622
    :cond_280
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .local v17, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v3, "not a bitmap: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 616
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_29c
    move-object/from16 v17, v3

    .end local v3    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad picture spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 611
    .end local v0    # "pictureSpec":Ljava/lang/String;
    .end local v17    # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_2b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--picture requires --style bigpicture"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_2bf
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    if-eqz v9, :cond_2d8

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 608
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_4b0

    .line 605
    :cond_2d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--bigtext requires --style bigtext"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_2e0
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x2

    const/16 v22, 0x1

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "styleSpec":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_660

    :cond_2f8
    goto :goto_330

    :sswitch_2f9
    const-string/jumbo v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    move/from16 v4, v19

    goto :goto_331

    :sswitch_305
    const-string v4, "inbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f8

    move v4, v3

    goto :goto_331

    :sswitch_30f
    const-string v3, "bigpicture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    move/from16 v4, v22

    goto :goto_331

    :sswitch_31a
    const-string v3, "bigtext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    const/4 v4, 0x0

    goto :goto_331

    :sswitch_324
    const-string/jumbo v3, "messaging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    move/from16 v4, v20

    goto :goto_331

    :goto_330
    const/4 v4, -0x1

    :goto_331
    packed-switch v4, :pswitch_data_676

    .line 599
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized notification style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 595
    :pswitch_34e
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 596
    .end local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .local v3, "mediaStyle":Landroid/app/Notification$MediaStyle;
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 597
    move-object/from16 v16, v3

    goto :goto_3a3

    .line 585
    .end local v3    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .restart local v16    # "mediaStyle":Landroid/app/Notification$MediaStyle;
    :pswitch_359
    const-string v3, "You"

    .line 586
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36e

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 590
    :cond_36e
    new-instance v4, Landroid/app/Notification$MessagingStyle;

    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 591
    invoke-virtual {v5, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v7, v4

    .line 592
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 593
    goto :goto_3a3

    .line 581
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_385
    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-direct {v3}, Landroid/app/Notification$InboxStyle;-><init>()V

    move-object v8, v3

    .line 582
    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 583
    goto :goto_3a3

    .line 577
    :pswitch_38f
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object v15, v3

    .line 578
    invoke-virtual {v13, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 579
    goto :goto_3a3

    .line 573
    :pswitch_399
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object v9, v3

    .line 574
    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 575
    nop

    .line 602
    :goto_3a3
    move-object/from16 v6, v24

    move-object/from16 v20, v25

    goto/16 :goto_4c3

    .line 538
    .end local v23    # "large":Z
    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v25    # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_3a9
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x2

    const/16 v22, 0x1

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v23    # "large":Z
    .restart local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v25    # "opt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 539
    .local v0, "intentKind":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "service"

    const-string v3, "broadcast"

    sparse-switch v5, :sswitch_data_684

    :cond_3c3
    goto :goto_3df

    :sswitch_3c4
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    move/from16 v4, v22

    goto :goto_3e0

    :sswitch_3cd
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    const/4 v4, 0x0

    goto :goto_3e0

    :sswitch_3d5
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    const/4 v4, 0x2

    goto :goto_3e0

    :goto_3df
    const/4 v4, -0x1

    :goto_3e0
    packed-switch v4, :pswitch_data_692

    goto :goto_3e8

    .line 543
    :pswitch_3e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_3e8
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v5

    .line 546
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_417

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v18, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const-string/jumbo v7, "xyz:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v19, v8

    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v19, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_41b

    .line 546
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_417
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .line 551
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :goto_41b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0xa000000

    if-eqz v3, :cond_431

    .line 552
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-static {v11, v7, v5, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v17, v5

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    .local v3, "pi":Landroid/app/PendingIntent;
    goto :goto_454

    .line 556
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :cond_431
    const/4 v7, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_443

    .line 557
    invoke-static {v11, v7, v5, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v17, v5

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    .restart local v3    # "pi":Landroid/app/PendingIntent;
    goto :goto_454

    .line 561
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :cond_443
    const/4 v4, 0x0

    const/high16 v6, 0xa000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v11

    move-object/from16 v17, v5

    move-object/from16 v20, v25

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v25    # "opt":Ljava/lang/String;
    .local v17, "intent":Landroid/content/Intent;
    .local v20, "opt":Ljava/lang/String;
    move-object/from16 v26, v24

    .end local v24    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v26, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 566
    .restart local v3    # "pi":Landroid/app/PendingIntent;
    :goto_454
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 567
    goto :goto_4b0

    .line 500
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v0, "large":Z
    .local v5, "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_458
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    goto :goto_46e

    .line 515
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_463
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    .line 520
    .end local v23    # "large":Z
    .restart local v0    # "large":Z
    :goto_46e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "iconSpec":Ljava/lang/String;
    invoke-virtual {v1, v12, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 522
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    if-nez v4, :cond_490

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: invalid icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    const/4 v5, -0x1

    return v5

    .line 526
    :cond_490
    if-eqz v0, :cond_497

    .line 527
    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 528
    const/4 v0, 0x0

    goto :goto_4b0

    .line 530
    :cond_497
    move-object v5, v4

    .line 532
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v5, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v6, v5

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_4c3

    .line 508
    .end local v3    # "iconSpec":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Icon;
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .local v5, "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_49e
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 509
    nop

    .line 663
    .end local v23    # "large":Z
    :goto_4b0
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v6, v26

    goto :goto_4c3

    .line 503
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20    # "opt":Ljava/lang/String;
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "large":Z
    .restart local v5    # "opt":Ljava/lang/String;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_4b7
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v0    # "large":Z
    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v23    # "large":Z
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    .line 504
    .end local v14    # "verbose":Z
    .local v0, "verbose":Z
    move v14, v0

    .line 663
    .end local v0    # "verbose":Z
    .end local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v23    # "large":Z
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v14    # "verbose":Z
    :goto_4c3
    goto/16 :goto_27

    .line 665
    .end local v20    # "opt":Ljava/lang/String;
    .restart local v5    # "opt":Ljava/lang/String;
    :cond_4c5
    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v4, 0x0

    .end local v5    # "opt":Ljava/lang/String;
    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v18    # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20    # "opt":Ljava/lang/String;
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 666
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 667
    .local v7, "text":Ljava/lang/String;
    if-eqz v8, :cond_59f

    if-nez v7, :cond_4e3

    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v26

    goto/16 :goto_5a6

    .line 672
    :cond_4e3
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 674
    move-object/from16 v6, v26

    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v6, :cond_4f1

    .line 676
    const v0, 0x1080077

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_4f4

    .line 678
    :cond_4f1
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 681
    :goto_4f4
    move/from16 v5, p3

    invoke-virtual {v1, v10, v5}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    .line 683
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 684
    .local v3, "n":Landroid/app/Notification;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting:\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NotificationManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v17, 0x7e4

    .line 688
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 687
    move-object/from16 v23, v3

    .end local v3    # "n":Landroid/app/Notification;
    .local v23, "n":Landroid/app/Notification;
    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p2

    move-object/from16 v21, v6

    .end local v6    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v21, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v6, v8

    move-object/from16 v24, v7

    .end local v7    # "text":Ljava/lang/String;
    .local v24, "text":Ljava/lang/String;
    move/from16 v7, v17

    move-object/from16 v27, v8

    .end local v8    # "tag":Ljava/lang/String;
    .local v27, "tag":Ljava/lang/String;
    move-object/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v25, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    move/from16 v9, v22

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 690
    if-eqz v14, :cond_59b

    .line 691
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 692
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 691
    const/16 v4, 0x7e4

    move-object/from16 v5, v27

    .end local v27    # "tag":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v0, v10, v5, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 693
    .local v0, "nr":Lcom/android/server/notification/NotificationRecord;
    const/4 v3, 0x3

    move/from16 v28, v3

    move-object v3, v0

    move/from16 v0, v28

    .local v0, "tries":I
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_564
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "tries":I
    .local v6, "tries":I
    if-lez v0, :cond_584

    .line 694
    if-eqz v3, :cond_56b

    goto :goto_584

    .line 696
    :cond_56b
    :try_start_56b
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_576
    .catch Ljava/lang/InterruptedException; {:try_start_56b .. :try_end_576} :catch_577

    .line 699
    goto :goto_578

    .line 698
    :catch_577
    move-exception v0

    .line 700
    :goto_578
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 701
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 700
    invoke-virtual {v0, v10, v5, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move v0, v6

    goto :goto_564

    .line 703
    .end local v6    # "tries":I
    :cond_584
    :goto_584
    if-nez v3, :cond_58e

    .line 704
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_59e

    .line 706
    :cond_58e
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    const-string v0, "  "

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v11, v4}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_59e

    .line 690
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "tag":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    :cond_59b
    move-object/from16 v5, v27

    const/4 v4, 0x0

    .line 711
    .end local v27    # "tag":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :goto_59e
    return v4

    .line 667
    .end local v5    # "tag":Ljava/lang/String;
    .end local v21    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v23    # "n":Landroid/app/Notification;
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .restart local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_59f
    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v26

    .line 668
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v26    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v21    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v24    # "text":Ljava/lang/String;
    .restart local v25    # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    :goto_5a6
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_5ac
    .sparse-switch
        -0x74789999 -> :sswitch_18e
        -0x603263ef -> :sswitch_183
        -0x60295f48 -> :sswitch_178
        -0x4821dd90 -> :sswitch_16d
        -0x468ec964 -> :sswitch_162
        -0x32dd8ddd -> :sswitch_157
        -0x2bc1295 -> :sswitch_14d
        0x5bc -> :sswitch_143
        0x5c6 -> :sswitch_138
        0x5d6 -> :sswitch_12c
        0x5db -> :sswitch_120
        0x5dc -> :sswitch_114
        0x5e7 -> :sswitch_109
        0x5e9 -> :sswitch_fe
        0x313c79 -> :sswitch_f2
        0x2906389 -> :sswitch_e6
        0x6942258 -> :sswitch_d9
        0x2a056f7a -> :sswitch_cd
        0x2a13d010 -> :sswitch_c1
        0x2d3ae234 -> :sswitch_b5
        0x302cc35e -> :sswitch_a9
        0x487e843c -> :sswitch_9d
        0x4a573094 -> :sswitch_92
        0x4bbf1cad -> :sswitch_86
        0x4bcda88d -> :sswitch_7a
        0x4f7504e1 -> :sswitch_6e
        0x4f757219 -> :sswitch_62
        0x4f76e594 -> :sswitch_56
        0x6789dfe2 -> :sswitch_4b
        0x76d66fcb -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_626
    .packed-switch 0x0
        :pswitch_4b7
        :pswitch_4b7
        :pswitch_49e
        :pswitch_49e
        :pswitch_49e
        :pswitch_463
        :pswitch_463
        :pswitch_463
        :pswitch_463
        :pswitch_463
        :pswitch_458
        :pswitch_458
        :pswitch_458
        :pswitch_3a9
        :pswitch_3a9
        :pswitch_3a9
        :pswitch_3a9
        :pswitch_3a9
        :pswitch_2e0
        :pswitch_2e0
        :pswitch_2bf
        :pswitch_2bf
        :pswitch_2bf
        :pswitch_252
        :pswitch_231
        :pswitch_1bd
        :pswitch_1a2
    .end packed-switch

    :sswitch_data_660
    .sparse-switch
        -0x55d4c8fc -> :sswitch_324
        -0x6cebdd3 -> :sswitch_31a
        -0x2a7c002 -> :sswitch_30f
        0x5fb2286 -> :sswitch_305
        0x62f6fe4 -> :sswitch_2f9
    .end sparse-switch

    :pswitch_data_676
    .packed-switch 0x0
        :pswitch_399
        :pswitch_38f
        :pswitch_385
        :pswitch_359
        :pswitch_34e
    .end packed-switch

    :sswitch_data_684
    .sparse-switch
        -0x62b40cf1 -> :sswitch_3d5
        -0x607e173f -> :sswitch_3cd
        0x7643c6b5 -> :sswitch_3c4
    .end sparse-switch

    :pswitch_data_692
    .packed-switch 0x0
        :pswitch_3e4
        :pswitch_3e4
        :pswitch_3e4
    .end packed-switch
.end method

.method private waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z
    .registers 5
    .param p1, "nls"    # Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1f

    .line 733
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-eqz v1, :cond_12

    .line 734
    const-string v1, "NotifShellCmd"

    const-string v2, "Bound Shell NLS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v1, 0x1

    return v1

    .line 738
    :cond_12
    const-wide/16 v1, 0x64

    :try_start_14
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    .line 741
    goto :goto_1c

    .line 739
    :catch_18
    move-exception v1

    .line 740
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 732
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V
    .registers 9
    .param p1, "nls"    # Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    .param p2, "key"    # Ljava/lang/String;

    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2a

    .line 716
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 717
    .local v1, "sbns":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 718
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 719
    return-void

    .line 717
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 723
    :cond_1d
    const-wide/16 v2, 0x64

    :try_start_1f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23

    .line 726
    goto :goto_27

    .line 724
    :catch_23
    move-exception v2

    .line 725
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 715
    .end local v1    # "sbns":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method private waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V
    .registers 5
    .param p1, "nls"    # Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    .line 749
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-nez v1, :cond_11

    .line 750
    const-string v1, "NotifShellCmd"

    const-string v2, "Unbound Shell NLS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void

    .line 754
    :cond_11
    const-wide/16 v1, 0x64

    :try_start_13
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    .line 757
    goto :goto_1b

    .line 755
    :catch_17
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 748
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 760
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method


# virtual methods
.method protected checkShellCommandPermission(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 130
    if-eqz p1, :cond_9

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method ensureChannel(Ljava/lang/String;I)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "shell_cmd"

    const-string v2, "Shell command"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 450
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 451
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 450
    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 454
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 453
    invoke-interface {v3, p1, v4, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 28
    .param p1, "cmd"    # Ljava/lang/String;

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_b

    .line 136
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 138
    :cond_b
    const/4 v3, 0x0

    .line 139
    .local v3, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 140
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 142
    .local v5, "identity":J
    const-string v7, "NotifShellCmd"

    const/4 v8, 0x0

    if-nez v4, :cond_1e

    .line 143
    :try_start_19
    const-string/jumbo v0, "root"

    move-object v3, v0

    .end local v3    # "callingPackage":Ljava/lang/String;
    .local v0, "callingPackage":Ljava/lang/String;
    goto :goto_2c

    .line 145
    .end local v0    # "callingPackage":Ljava/lang/String;
    .restart local v3    # "callingPackage":Ljava/lang/String;
    :cond_1e
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_2c

    array-length v9, v0

    if-lez v9, :cond_2c

    .line 147
    aget-object v9, v0, v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_36
    .catchall {:try_start_19 .. :try_end_2b} :catchall_31

    move-object v3, v9

    .line 153
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_2c
    :goto_2c
    nop

    :goto_2d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    goto :goto_3e

    .line 153
    :catchall_31
    move-exception v0

    move-wide/from16 v24, v5

    goto/16 :goto_65e

    .line 150
    :catch_36
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v9, "failed to get caller pkg"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_65b

    .line 153
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2d

    .line 157
    :goto_3e
    const-string v0, "enhance_log"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 159
    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 160
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 161
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/android/server/notification/NotificationManagerServiceStub;->setLightsDebug(Ljava/lang/Boolean;)V

    .line 162
    return v8

    .line 166
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 168
    .local v9, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: permission denied: callingUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " callingPackage="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const/16 v0, 0xff

    return v0

    .line 177
    :cond_b3
    const/16 v0, 0x2d

    const/16 v7, 0x5f

    :try_start_b7
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bf} :catch_635

    const/4 v13, 0x2

    const/4 v15, 0x1

    sparse-switch v7, :sswitch_data_662

    :cond_c4
    goto/16 :goto_19b

    :sswitch_c6
    :try_start_c6
    const-string v7, "allow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x5

    goto/16 :goto_19c

    :sswitch_d1
    const-string/jumbo v7, "set_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v8

    goto/16 :goto_19c

    :sswitch_dd
    const-string v7, "disallow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x4

    goto/16 :goto_19c

    :sswitch_e8
    const-string/jumbo v7, "reset_assistant_user_set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x7

    goto/16 :goto_19c

    :sswitch_f4
    const-string v7, "allow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v15

    goto/16 :goto_19c

    :sswitch_ff
    const-string/jumbo v7, "set_bubbles"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0x9

    goto/16 :goto_19c

    :sswitch_10c
    const-string/jumbo v7, "post"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0xb

    goto/16 :goto_19c

    :sswitch_119
    const-string v7, "list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0xd

    goto/16 :goto_19c

    :sswitch_125
    const-string v7, "get"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0xe

    goto/16 :goto_19c

    :sswitch_131
    const-string/jumbo v7, "unsnooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0x10

    goto :goto_19c

    :sswitch_13d
    const-string v7, "get_approved_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0x8

    goto :goto_19c

    :sswitch_148
    const-string v7, "disallow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v13

    goto :goto_19c

    :sswitch_152
    const-string v7, "allow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x3

    goto :goto_19c

    :sswitch_15c
    const-string/jumbo v7, "snooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0x11

    goto :goto_19c

    :sswitch_168
    const-string/jumbo v7, "notify"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0xc

    goto :goto_19c

    :sswitch_174
    const-string v7, "disallow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x6

    goto :goto_19c

    :sswitch_17e
    const-string/jumbo v7, "set_bubbles_channel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/16 v0, 0xa

    goto :goto_19c

    :sswitch_18a
    const-string/jumbo v7, "snoozed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_191} :catch_196

    if-eqz v0, :cond_c4

    const/16 v0, 0xf

    goto :goto_19c

    .line 440
    :catch_196
    move-exception v0

    move-wide/from16 v24, v5

    goto/16 :goto_638

    .line 177
    :goto_19b
    const/4 v0, -0x1

    :goto_19c
    const/4 v7, 0x0

    const-string v10, "Invalid assistant - must be a ComponentName"

    const-string v11, "Invalid listener - must be a ComponentName"

    packed-switch v0, :pswitch_data_6ac

    .line 438
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .local v24, "identity":J
    :try_start_1a6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1aa} :catch_632

    goto/16 :goto_634

    .line 382
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_1ac
    :try_start_1ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1b0} :catch_635

    .line 383
    .local v0, "subflag":Ljava/lang/String;
    const-string v10, "help"

    if-nez v0, :cond_1b6

    .line 384
    move-object v0, v10

    goto :goto_1c3

    .line 385
    :cond_1b6
    :try_start_1b6
    const-string v11, "--"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1bc} :catch_635

    if-eqz v11, :cond_1c3

    .line 386
    :try_start_1be
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1c2} :catch_196

    move-object v0, v11

    .line 388
    :cond_1c3
    :goto_1c3
    :try_start_1c3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 389
    .local v11, "flagarg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 390
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v14, v19

    .end local v19    # "key":Ljava/lang/String;
    .local v14, "key":Ljava/lang/String;
    if-nez v14, :cond_1d2

    move-object v0, v10

    .line 391
    :cond_1d2
    const/4 v10, 0x0

    .line 392
    .local v10, "criterion":Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 393
    .local v19, "duration":J
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1d9} :catch_635

    sparse-switch v21, :sswitch_data_6d4

    :cond_1dc
    goto :goto_220

    :sswitch_1dd
    :try_start_1dd
    const-string v12, "context"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1dc

    move/from16 v16, v8

    goto :goto_222

    :sswitch_1e8
    const-string v12, "criterion"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1dc

    move/from16 v16, v13

    goto :goto_222

    :sswitch_1f3
    const-string/jumbo v12, "until"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1dc

    const/16 v16, 0x3

    goto :goto_222

    :sswitch_1ff
    const-string v12, "for"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1dc

    const/16 v16, 0x4

    goto :goto_222

    :sswitch_20a
    const-string v12, "condition"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1dc

    move/from16 v16, v15

    goto :goto_222

    :sswitch_215
    const-string v12, "duration"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_21b} :catch_196

    if-eqz v12, :cond_1dc

    const/16 v16, 0x5

    goto :goto_222

    :goto_220
    const/16 v16, -0x1

    :goto_222
    packed-switch v16, :pswitch_data_6ee

    .line 405
    move-object/from16 v23, v0

    move-wide/from16 v24, v5

    move-object v0, v14

    .end local v5    # "identity":J
    .end local v14    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    .local v23, "subflag":Ljava/lang/String;
    .restart local v24    # "identity":J
    :try_start_22a
    const-string/jumbo v5, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_22d} :catch_632

    goto/16 :goto_2ef

    .line 402
    .end local v23    # "subflag":Ljava/lang/String;
    .end local v24    # "identity":J
    .local v0, "subflag":Ljava/lang/String;
    .restart local v5    # "identity":J
    .restart local v14    # "key":Ljava/lang/String;
    :pswitch_22f
    :try_start_22f
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v19, v16

    .line 403
    move-object/from16 v22, v14

    move-wide/from16 v13, v19

    goto :goto_23f

    .line 397
    :pswitch_23a
    move-object v10, v11

    .line 398
    move-object/from16 v22, v14

    move-wide/from16 v13, v19

    .line 409
    .end local v14    # "key":Ljava/lang/String;
    .end local v19    # "duration":J
    .local v13, "duration":J
    .local v22, "key":Ljava/lang/String;
    :goto_23f
    const-wide/16 v16, 0x0

    cmp-long v18, v13, v16

    if-gtz v18, :cond_269

    if-eqz v10, :cond_248

    goto :goto_269

    .line 432
    :cond_248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error: invalid value for --"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_268} :catch_196

    .line 433
    return v15

    .line 410
    :cond_269
    :goto_269
    :try_start_269
    new-instance v12, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-direct {v12, v7}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>(Lcom/android/server/notification/NotificationShellCmd$ShellNls-IA;)V

    move-object v7, v12

    .line 411
    .local v7, "nls":Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    iget-object v12, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v8, Landroid/content/ComponentName;

    .line 412
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 413
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v23, v0

    .end local v0    # "subflag":Ljava/lang/String;
    .restart local v23    # "subflag":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 411
    invoke-virtual {v7, v12, v8, v0}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 415
    invoke-direct {v1, v7}, Lcom/android/server/notification/NotificationShellCmd;->waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z

    move-result v0
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_297} :catch_635

    if-nez v0, :cond_2a0

    .line 416
    :try_start_299
    const-string v0, "error: could not bind a listener in time"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_299 .. :try_end_29e} :catch_196

    .line 417
    const/4 v0, 0x1

    return v0

    .line 419
    :cond_2a0
    cmp-long v0, v13, v16

    if-lez v0, :cond_2ca

    .line 420
    :try_start_2a4
    const-string/jumbo v0, "snoozing <%s> until time: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v22, v8, v12

    new-instance v12, Ljava/util/Date;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2b3} :catch_635

    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    add-long v5, v15, v13

    :try_start_2b7
    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    const/4 v5, 0x1

    aput-object v12, v8, v5

    .line 420
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, v22

    .end local v22    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v7, v0, v13, v14}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_2e4

    .line 424
    .end local v0    # "key":Ljava/lang/String;
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    .restart local v22    # "key":Ljava/lang/String;
    :cond_2ca
    move-wide/from16 v24, v5

    move-object/from16 v0, v22

    .end local v5    # "identity":J
    .end local v22    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v24    # "identity":J
    const-string/jumbo v5, "snoozing <%s> until criterion: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    aput-object v10, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v7, v0, v10}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_2e4
    invoke-direct {v1, v7, v0}, Lcom/android/server/notification/NotificationShellCmd;->waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->unregisterAsSystemService()V

    .line 430
    invoke-direct {v1, v7}, Lcom/android/server/notification/NotificationShellCmd;->waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V

    .line 431
    .end local v7    # "nls":Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    goto/16 :goto_631

    .line 405
    .end local v13    # "duration":J
    .restart local v19    # "duration":J
    :goto_2ef
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const/4 v5, 0x1

    return v5

    .line 366
    .end local v0    # "key":Ljava/lang/String;
    .end local v10    # "criterion":Ljava/lang/String;
    .end local v11    # "flagarg":Ljava/lang/String;
    .end local v19    # "duration":J
    .end local v23    # "subflag":Ljava/lang/String;
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_2f4
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    const/4 v0, 0x0

    .line 367
    .local v0, "mute":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "key":Ljava/lang/String;
    const-string v6, "--mute"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_309

    .line 369
    const/4 v0, 0x1

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 372
    :cond_309
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v6

    if-eqz v6, :cond_331

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsnoozing: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5, v7, v0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_631

    .line 376
    :cond_331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: no snoozed otification matching key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const/4 v6, 0x1

    return v6

    .line 351
    .end local v0    # "mute":Z
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_349
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 353
    .local v5, "sh":Lcom/android/server/notification/SnoozeHelper;
    invoke-virtual {v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 354
    .local v7, "nr":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "key":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " snoozed, time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 358
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    .line 357
    invoke-virtual {v5, v12, v8, v10}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " context="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 361
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    .line 360
    invoke-virtual {v5, v12, v8, v10}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 356
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    goto :goto_35c

    .line 363
    :cond_3a9
    goto/16 :goto_631

    .line 340
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_3ab
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "key":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v5

    .line 342
    .local v5, "nr":Lcom/android/server/notification/NotificationRecord;
    if-eqz v5, :cond_3c7

    .line 343
    const-string v6, ""

    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_631

    .line 345
    :cond_3c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: no active notification matching key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    const/4 v6, 0x1

    return v6

    .line 335
    .end local v0    # "key":Ljava/lang/String;
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_3df
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3ed
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 336
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_3ed

    .line 338
    :cond_3fd
    goto/16 :goto_631

    .line 332
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_3ff
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    .line 333
    goto/16 :goto_631

    .line 315
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_406
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "channelId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 318
    .local v6, "allow":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 319
    .local v7, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_42b

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 322
    :cond_42b
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v3, v7, v0, v5}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v8

    .line 324
    .local v8, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v6}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 325
    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v7, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 326
    .local v10, "appUid":I
    iget-object v11, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v11, v0, v10, v8}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 328
    goto/16 :goto_631

    .line 298
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v6    # "allow":Z
    .end local v7    # "userId":I
    .end local v8    # "channel":Landroid/app/NotificationChannel;
    .end local v10    # "appUid":I
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_446
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 300
    .local v5, "preference":I
    const/4 v7, 0x3

    if-gt v5, v7, :cond_47f

    if-gez v5, :cond_45a

    goto :goto_47f

    .line 305
    :cond_45a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 306
    .local v6, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_46d

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 309
    :cond_46d
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 310
    .local v7, "appUid":I
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v0, v7, v5}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 311
    goto/16 :goto_631

    .line 301
    .end local v6    # "userId":I
    .end local v7    # "appUid":I
    :cond_47f
    :goto_47f
    const-string v6, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const/4 v6, -0x1

    return v6

    .line 284
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_486
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 285
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49b

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 288
    :cond_49b
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 289
    .local v5, "approvedAssistant":Landroid/content/ComponentName;
    if-nez v5, :cond_4ab

    .line 290
    const-string/jumbo v6, "null"

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_631

    .line 292
    :cond_4ab
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    goto/16 :goto_631

    .line 276
    .end local v0    # "userId":I
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_4b4
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 277
    .restart local v0    # "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4c9

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 280
    :cond_4c9
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 281
    goto/16 :goto_631

    .line 263
    .end local v0    # "userId":I
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :pswitch_4d0
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 264
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_4e1

    .line 265
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const/4 v5, -0x1

    return v5

    .line 268
    :cond_4e1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 269
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4f4

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 272
    :cond_4f4
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 274
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_631

    .line 250
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_4fc
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 251
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_50d

    .line 252
    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const/4 v5, -0x1

    return v5

    .line 255
    :cond_50d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 256
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_520

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 259
    :cond_520
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 261
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_631

    .line 236
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_528
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_539

    .line 238
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const/4 v5, -0x1

    return v5

    .line 241
    :cond_539
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 242
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_54c

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 245
    :cond_54c
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v6, v0, v5, v7, v8}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 248
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_631

    .line 222
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_555
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_566

    .line 224
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const/4 v5, -0x1

    return v5

    .line 227
    :cond_566
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 228
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_579

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 231
    :cond_579
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7, v7}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 234
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    goto/16 :goto_631

    .line 212
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_581
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 214
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_59a

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 217
    :cond_59a
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 220
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    goto/16 :goto_631

    .line 201
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_5a2
    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 203
    .local v5, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5bb

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 206
    :cond_5bb
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v8, 0x1

    invoke-interface {v6, v0, v5, v8}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 209
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    goto/16 :goto_631

    .line 179
    .end local v24    # "identity":J
    .local v5, "identity":J
    :pswitch_5c3
    move-wide/from16 v24, v5

    move v6, v13

    move v8, v15

    const/4 v5, -0x1

    const/4 v7, 0x3

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "mode":Ljava/lang/String;
    const/4 v10, 0x0

    .line 181
    .local v10, "interruptionFilter":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_6fe

    :cond_5d5
    goto :goto_61c

    :sswitch_5d6
    const-string/jumbo v6, "none"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d5

    const/16 v16, 0x0

    goto :goto_61e

    :sswitch_5e2
    const-string/jumbo v6, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d5

    const/16 v16, 0x5

    goto :goto_61e

    :sswitch_5ee
    const-string v6, "all"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d5

    const/16 v16, 0x4

    goto :goto_61e

    :sswitch_5f9
    const-string/jumbo v6, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d5

    move/from16 v16, v8

    goto :goto_61e

    :sswitch_605
    const-string/jumbo v7, "priority"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d5

    move/from16 v16, v6

    goto :goto_61e

    :sswitch_611
    const-string v6, "alarms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d5

    move/from16 v16, v7

    goto :goto_61e

    :goto_61c
    move/from16 v16, v5

    :goto_61e
    packed-switch v16, :pswitch_data_718

    goto :goto_62a

    .line 194
    :pswitch_622
    const/4 v10, 0x1

    goto :goto_62a

    .line 190
    :pswitch_624
    const/4 v10, 0x4

    .line 191
    goto :goto_62a

    .line 187
    :pswitch_626
    const/4 v10, 0x2

    .line 188
    goto :goto_62a

    .line 184
    :pswitch_628
    const/4 v10, 0x3

    .line 185
    nop

    .line 196
    :goto_62a
    move v5, v10

    .line 197
    .local v5, "filter":I
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v6, v3, v5}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_630
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_630} :catch_632

    .line 199
    .end local v0    # "mode":Ljava/lang/String;
    .end local v5    # "filter":I
    .end local v10    # "interruptionFilter":I
    nop

    .line 443
    :goto_631
    goto :goto_659

    .line 440
    :catch_632
    move-exception v0

    goto :goto_638

    .line 438
    :goto_634
    return v0

    .line 440
    .end local v24    # "identity":J
    .local v5, "identity":J
    :catch_635
    move-exception v0

    move-wide/from16 v24, v5

    .line 441
    .end local v5    # "identity":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "identity":J
    :goto_638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred. Check logcat for details. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    const-string v5, "NotificationService"

    const-string v6, "Error running shell command"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_659
    const/4 v5, 0x0

    return v5

    .line 153
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v24    # "identity":J
    .restart local v5    # "identity":J
    :catchall_65b
    move-exception v0

    move-wide/from16 v24, v5

    .end local v5    # "identity":J
    .restart local v24    # "identity":J
    :goto_65e
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw v0

    :sswitch_data_662
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_18a
        -0x677a47b2 -> :sswitch_17e
        -0x4f05a8e6 -> :sswitch_174
        -0x3df868b7 -> :sswitch_168
        -0x3580721a -> :sswitch_15c
        -0x19cf0b16 -> :sswitch_152
        -0x199eb9aa -> :sswitch_148
        -0x18b58921 -> :sswitch_13d
        -0xa97a41 -> :sswitch_131
        0x18f56 -> :sswitch_125
        0x32b09e -> :sswitch_119
        0x3498a0 -> :sswitch_10c
        0xca4be8a -> :sswitch_ff
        0x16318b24 -> :sswitch_f4
        0x28bd431f -> :sswitch_e8
        0x4af068f8 -> :sswitch_dd
        0x76556fbd -> :sswitch_d1
        0x7dcb4968 -> :sswitch_c6
    .end sparse-switch

    :pswitch_data_6ac
    .packed-switch 0x0
        :pswitch_5c3
        :pswitch_5a2
        :pswitch_581
        :pswitch_555
        :pswitch_528
        :pswitch_4fc
        :pswitch_4d0
        :pswitch_4b4
        :pswitch_486
        :pswitch_446
        :pswitch_406
        :pswitch_3ff
        :pswitch_3ff
        :pswitch_3df
        :pswitch_3ab
        :pswitch_349
        :pswitch_2f4
        :pswitch_1ac
    .end packed-switch

    :sswitch_data_6d4
    .sparse-switch
        -0x76bbb26c -> :sswitch_215
        -0x335692e5 -> :sswitch_20a
        0x18cc9 -> :sswitch_1ff
        0x6a47f5e -> :sswitch_1f3
        0x16e20ea1 -> :sswitch_1e8
        0x38b735af -> :sswitch_1dd
    .end sparse-switch

    :pswitch_data_6ee
    .packed-switch 0x0
        :pswitch_23a
        :pswitch_23a
        :pswitch_23a
        :pswitch_22f
        :pswitch_22f
        :pswitch_22f
    .end packed-switch

    :sswitch_data_6fe
    .sparse-switch
        -0x545a2fbe -> :sswitch_611
        -0x4577865c -> :sswitch_605
        0xddf -> :sswitch_5f9
        0x179a1 -> :sswitch_5ee
        0x1ad6f -> :sswitch_5e2
        0x33af38 -> :sswitch_5d6
    .end sparse-switch

    :pswitch_data_718
    .packed-switch 0x0
        :pswitch_628
        :pswitch_628
        :pswitch_626
        :pswitch_624
        :pswitch_622
        :pswitch_622
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 764
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n  enhance_log [true|false]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 458
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 459
    :cond_8
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 462
    :cond_23
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 463
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 464
    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 465
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 466
    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_89

    .line 469
    :cond_4c
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_69

    .line 470
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, "resid":I
    if-eqz v0, :cond_68

    .line 473
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 472
    .end local v0    # "resid":I
    :cond_68
    goto :goto_87

    .line 475
    :cond_69
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 476
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 477
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 478
    .local v1, "bits":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 475
    .end local v1    # "bits":[B
    :cond_87
    :goto_87
    nop

    .line 480
    return-object v1

    .line 467
    :cond_89
    :goto_89
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 468
    .local v0, "asUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method
