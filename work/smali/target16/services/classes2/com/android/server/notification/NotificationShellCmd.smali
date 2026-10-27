.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# instance fields
.field public final mBinderService:Landroid/app/INotificationManager;

.field public final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    .line 127
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 129
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 130
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public checkShellCommandPermission(I)Z
    .registers 2

    .line 0
    if-eqz p1, :cond_9

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public final doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 495
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 496
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 497
    new-instance v10, Landroid/app/Notification$Builder;

    const-string/jumbo v5, "shell_cmd"

    invoke-direct {v10, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0x2710

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 509
    :goto_1f
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x3

    const-string/jumbo v11, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n  -u|--user <user_id>\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    const/16 v18, -0x1

    const-string v12, "NotifShellCmd"

    if-eqz v9, :cond_42c

    .line 511
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v20

    const-string v13, "--user"

    move/from16 v23, v8

    const/4 v8, 0x1

    sparse-switch v20, :sswitch_data_4e2

    goto/16 :goto_426

    :sswitch_3c
    const-string v12, "large-icon"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_1e1

    :sswitch_46
    const-string v12, "--verbose"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_169

    :sswitch_50
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    goto/16 :goto_17b

    :sswitch_58
    const-string v8, "--line"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    if-eqz v6, :cond_74

    .line 640
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    :goto_69
    move-object/from16 v20, v2

    move-object v2, v5

    move-object v3, v6

    move-object v12, v7

    :goto_6e
    move/from16 v5, v23

    const/16 v21, 0x0

    goto/16 :goto_416

    .line 638
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--line requires --style inbox"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :sswitch_7c
    const-string v8, "--icon"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    goto/16 :goto_1ad

    :sswitch_86
    const-string v0, "--help"

    :goto_88
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_426

    :sswitch_8e
    const-string v8, "--bigtext"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    goto/16 :goto_12f

    :sswitch_98
    const-string v8, "--bigText"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    goto/16 :goto_12f

    :sswitch_a2
    const-string v12, "--largeicon"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_1e1

    :sswitch_ac
    const-string v12, "--intent"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_238

    :sswitch_b6
    const-string v8, "--picture"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    if-eqz v15, :cond_10b

    .line 624
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 625
    invoke-virtual {v0, v2, v8}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v9

    if-eqz v9, :cond_f4

    .line 629
    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 630
    instance-of v11, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_dc

    .line 631
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_69

    .line 633
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_f4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad picture spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--picture requires --style bigpicture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :sswitch_113
    const-string v12, "largeicon"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_1e1

    :sswitch_11d
    const-string v12, "--content-intent"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_238

    :sswitch_127
    const-string v8, "--big-text"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    :goto_12f
    if-eqz v5, :cond_13a

    .line 618
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto/16 :goto_69

    .line 616
    :cond_13a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--bigtext requires --style bigtext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :sswitch_142
    const-string/jumbo v8, "title"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    :goto_14b
    move-object/from16 v20, v2

    move-object v2, v5

    move-object v3, v6

    move-object v12, v7

    const/16 v21, 0x0

    goto/16 :goto_2e7

    :sswitch_154
    const-string v0, "--wtf"

    goto/16 :goto_88

    :sswitch_158
    const-string v8, "icon"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    goto :goto_1ad

    :sswitch_161
    const-string v12, "-v"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    :goto_169
    move-object/from16 v20, v2

    move/from16 v16, v8

    :goto_16d
    move/from16 v8, v23

    :goto_16f
    const/16 v21, 0x0

    goto/16 :goto_41a

    :sswitch_173
    const-string v8, "-u"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    .line 669
    :goto_17b
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 670
    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    const/4 v13, -0x2

    if-ne v11, v13, :cond_18a

    .line 672
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 674
    :cond_18a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v9, v8, v13}, [Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "userId: %s %s converted into %d"

    invoke-static {v12, v9, v8}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move v8, v11

    goto :goto_16f

    .line 511
    :sswitch_19c
    const-string v8, "-t"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    goto :goto_14b

    :sswitch_1a5
    const-string v8, "-i"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    :goto_1ad
    const/4 v8, 0x0

    goto :goto_1e1

    :sswitch_1af
    const-string v0, "-h"

    goto/16 :goto_88

    :sswitch_1b3
    const-string v12, "-c"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto/16 :goto_238

    :sswitch_1bd
    const-string v12, "-S"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    move-object/from16 v20, v2

    move-object v2, v5

    move-object v3, v6

    move-object v12, v7

    move/from16 v5, v23

    const/16 v21, 0x0

    goto/16 :goto_303

    :sswitch_1d0
    const-string v12, "-I"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto :goto_1e1

    :sswitch_1d9
    const-string v12, "--large-icon"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    .line 531
    :goto_1e1
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 532
    invoke-virtual {v0, v2, v9}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v11

    if-nez v11, :cond_200

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: invalid icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v18

    :cond_200
    if-eqz v8, :cond_207

    .line 538
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto/16 :goto_69

    :cond_207
    move-object/from16 v20, v2

    move-object v14, v11

    goto/16 :goto_16d

    .line 511
    :sswitch_20c
    const-string v8, "--conversation"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_426

    if-eqz v7, :cond_21f

    .line 665
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    goto/16 :goto_69

    .line 662
    :cond_21f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--conversation requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :sswitch_227
    const-string v12, "intent"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    goto :goto_238

    :sswitch_230
    const-string v12, "content-intent"

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_426

    .line 550
    :goto_238
    invoke-virtual {v0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string/jumbo v12, "service"

    const-string v13, "broadcast"

    sparse-switch v11, :sswitch_data_564

    goto :goto_26b

    :sswitch_24c
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_253

    goto :goto_26b

    :cond_253
    const/16 v18, 0x2

    goto :goto_26b

    :sswitch_256
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25d

    goto :goto_26b

    :cond_25d
    move/from16 v18, v8

    goto :goto_26b

    :sswitch_260
    const-string v8, "activity"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_269

    goto :goto_26b

    :cond_269
    const/16 v18, 0x0

    :goto_26b
    packed-switch v18, :pswitch_data_572

    const/4 v8, 0x0

    :goto_26f
    move-object v9, v6

    const/4 v11, 0x0

    goto :goto_277

    .line 554
    :pswitch_272
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    goto :goto_26f

    .line 556
    :goto_277
    invoke-static {v0, v11}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v6

    .line 557
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_2a1

    .line 559
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string/jumbo v2, "xyz:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2a3

    :cond_2a1
    move-object/from16 v20, v2

    .line 562
    :goto_2a3
    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0xc000000

    if-eqz v2, :cond_2b8

    .line 563
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-static {v4, v11, v6, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_2b2
    move-object v3, v5

    move-object v5, v2

    move-object v2, v3

    move-object v12, v7

    move-object v3, v9

    goto :goto_2d3

    :cond_2b8
    const/4 v11, 0x0

    .line 567
    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 568
    invoke-static {v4, v11, v6, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_2b2

    :cond_2c4
    const/4 v8, 0x0

    move-object v13, v9

    .line 572
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, v5

    const/4 v5, 0x0

    move-object v3, v7

    const/high16 v7, 0xc000000

    move-object v12, v3

    move-object v3, v13

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 577
    :goto_2d3
    invoke-virtual {v10, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_6e

    :sswitch_2d8
    move-object/from16 v20, v2

    move-object v2, v5

    move-object v3, v6

    move-object v12, v7

    const/16 v21, 0x0

    .line 511
    const-string v5, "--title"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_426

    .line 519
    :goto_2e7
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move/from16 v5, v23

    goto/16 :goto_416

    :sswitch_2f2
    move-object/from16 v20, v2

    move-object v2, v5

    move-object v3, v6

    move-object v12, v7

    move/from16 v5, v23

    const/16 v21, 0x0

    .line 511
    const-string v6, "--style"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_426

    .line 581
    :goto_303
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 582
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_57c

    :goto_315
    move/from16 v17, v18

    goto :goto_352

    :sswitch_318
    const-string/jumbo v7, "media"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_322

    goto :goto_315

    :cond_322
    const/16 v17, 0x4

    goto :goto_352

    :sswitch_325
    const-string v7, "inbox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_352

    goto :goto_315

    :sswitch_32e
    const-string v7, "bigpicture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_337

    goto :goto_315

    :cond_337
    const/16 v17, 0x2

    goto :goto_352

    :sswitch_33a
    const-string v7, "bigtext"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_343

    goto :goto_315

    :cond_343
    move/from16 v17, v8

    goto :goto_352

    :sswitch_346
    const-string/jumbo v7, "messaging"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_350

    goto :goto_315

    :cond_350
    const/16 v17, 0x0

    :cond_352
    :goto_352
    packed-switch v17, :pswitch_data_592

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized notification style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :pswitch_36d
    new-instance v6, Landroid/app/Notification$MediaStyle;

    invoke-direct {v6}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 607
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_375
    move-object v6, v3

    :goto_376
    move-object v7, v12

    goto :goto_3bd

    .line 592
    :pswitch_378
    new-instance v6, Landroid/app/Notification$InboxStyle;

    invoke-direct {v6}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 593
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_376

    .line 588
    :pswitch_381
    new-instance v15, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v15}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 589
    invoke-virtual {v10, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_375

    .line 584
    :pswitch_38a
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 585
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_375

    .line 597
    :pswitch_393
    invoke-virtual {v0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a5

    .line 598
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 599
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto :goto_3a7

    .line 597
    :cond_3a5
    const-string v6, "You"

    .line 601
    :goto_3a7
    new-instance v7, Landroid/app/Notification$MessagingStyle;

    new-instance v8, Landroid/app/Person$Builder;

    invoke-direct {v8}, Landroid/app/Person$Builder;-><init>()V

    .line 602
    invoke-virtual {v8, v6}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 603
    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-object v6, v3

    :goto_3bd
    move v8, v5

    :goto_3be
    move-object v5, v2

    goto :goto_41a

    :sswitch_3c0
    move-object/from16 v20, v2

    move-object v2, v5

    move-object v3, v6

    move-object v12, v7

    move/from16 v5, v23

    const/16 v21, 0x0

    .line 511
    const-string v6, "--message"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_426

    if-eqz v12, :cond_41e

    .line 647
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 648
    const-string v7, ":"

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 649
    array-length v7, v6

    if-le v7, v8, :cond_3ef

    .line 650
    aget-object v7, v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v19, 0x0

    aget-object v6, v6, v19

    invoke-virtual {v12, v7, v8, v9, v6}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    goto :goto_416

    :cond_3ef
    const/16 v19, 0x0

    .line 653
    aget-object v6, v6, v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 655
    invoke-virtual {v12}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Them"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    .line 657
    invoke-virtual {v12}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/16 v22, 0x2

    rem-int/lit8 v11, v11, 0x2

    aget-object v9, v9, v11

    .line 653
    invoke-virtual {v12, v6, v7, v8, v9}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :goto_416
    move-object v6, v3

    move v8, v5

    move-object v7, v12

    goto :goto_3be

    :goto_41a
    move-object/from16 v2, v20

    goto/16 :goto_1f

    .line 644
    :cond_41e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--message requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_426
    :goto_426
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_42c
    move v5, v8

    .line 685
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4dd

    if-nez v3, :cond_43b

    goto/16 :goto_4dd

    .line 692
    :cond_43b
    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-nez v14, :cond_44b

    const v3, 0x1080077

    .line 696
    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_446
    move-object/from16 v3, p2

    move/from16 v9, p3

    goto :goto_44f

    .line 698
    :cond_44b
    invoke-virtual {v10, v14}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_446

    .line 701
    :goto_44f
    invoke-virtual {v0, v3, v9}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    const/16 v6, -0x2710

    if-ne v5, v6, :cond_46d

    .line 704
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 705
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "set user id (%d) from calling uid (%d)"

    invoke-static {v12, v6, v5}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46e

    :cond_46d
    move v8, v5

    .line 707
    :goto_46e
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 708
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "posting for user %d:\n  %s\n"

    invoke-virtual {v1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 709
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "posting: %s for user %d"

    invoke-static {v12, v6, v5}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v2

    .line 711
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v6, 0x7e4

    move-object v10, v4

    move-object/from16 v4, p2

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    if-eqz v16, :cond_4ce

    .line 715
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 716
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v6, 0x7e4

    .line 715
    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    :goto_4a7
    add-int/lit8 v4, v17, -0x1

    if-lez v17, :cond_4c6

    if-eqz v2, :cond_4ae

    goto :goto_4c6

    .line 720
    :cond_4ae
    :try_start_4ae
    const-string/jumbo v2, "waiting for notification to post..."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    .line 721
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b9
    .catch Ljava/lang/InterruptedException; {:try_start_4ae .. :try_end_4b9} :catch_4b9

    .line 724
    :catch_4b9
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 725
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 724
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move/from16 v17, v4

    goto :goto_4a7

    :cond_4c6
    :goto_4c6
    if-nez v2, :cond_4d0

    .line 728
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4ce
    const/4 v11, 0x0

    goto :goto_4dc

    .line 730
    :cond_4d0
    const-string/jumbo v0, "posted: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const-string v0, "  "

    const/4 v11, 0x0

    invoke-virtual {v2, v1, v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_4dc
    return v11

    .line 688
    :cond_4dd
    :goto_4dd
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v18

    nop

    :sswitch_data_4e2
    .sparse-switch
        -0x74789999 -> :sswitch_3c0
        -0x603263ef -> :sswitch_2f2
        -0x60295f48 -> :sswitch_2d8
        -0x4821dd90 -> :sswitch_230
        -0x468ec964 -> :sswitch_227
        -0x32dd8ddd -> :sswitch_20c
        -0x2bc1295 -> :sswitch_1d9
        0x5bc -> :sswitch_1d0
        0x5c6 -> :sswitch_1bd
        0x5d6 -> :sswitch_1b3
        0x5db -> :sswitch_1af
        0x5dc -> :sswitch_1a5
        0x5e7 -> :sswitch_19c
        0x5e8 -> :sswitch_173
        0x5e9 -> :sswitch_161
        0x313c79 -> :sswitch_158
        0x2906389 -> :sswitch_154
        0x6942258 -> :sswitch_142
        0x2a056f7a -> :sswitch_127
        0x2a13d010 -> :sswitch_11d
        0x2d3ae234 -> :sswitch_113
        0x302cc35e -> :sswitch_b6
        0x487e843c -> :sswitch_ac
        0x4a573094 -> :sswitch_a2
        0x4bbf1cad -> :sswitch_98
        0x4bcda88d -> :sswitch_8e
        0x4f7504e1 -> :sswitch_86
        0x4f757219 -> :sswitch_7c
        0x4f76e594 -> :sswitch_58
        0x4f7b216b -> :sswitch_50
        0x6789dfe2 -> :sswitch_46
        0x76d66fcb -> :sswitch_3c
    .end sparse-switch

    :sswitch_data_564
    .sparse-switch
        -0x62b40cf1 -> :sswitch_260
        -0x607e173f -> :sswitch_256
        0x7643c6b5 -> :sswitch_24c
    .end sparse-switch

    :pswitch_data_572
    .packed-switch 0x0
        :pswitch_272
        :pswitch_272
        :pswitch_272
    .end packed-switch

    :sswitch_data_57c
    .sparse-switch
        -0x55d4c8fc -> :sswitch_346
        -0x6cebdd3 -> :sswitch_33a
        -0x2a7c002 -> :sswitch_32e
        0x5fb2286 -> :sswitch_325
        0x62f6fe4 -> :sswitch_318
    .end sparse-switch

    :pswitch_data_592
    .packed-switch 0x0
        :pswitch_393
        :pswitch_38a
        :pswitch_381
        :pswitch_378
        :pswitch_36d
    .end packed-switch
.end method

.method public ensureChannel(Ljava/lang/String;I)V
    .registers 7

    .line 458
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Shell command"

    const/4 v2, 0x3

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 460
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    .line 461
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 460
    invoke-interface {v1, p1, v2}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 464
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 463
    invoke-interface {p0, p1, p2, p1, v3}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 462
    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_b

    .line 140
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 143
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 146
    const-string v6, "NotifShellCmd"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v3, :cond_22

    .line 147
    :try_start_19
    const-string/jumbo v0, "root"

    goto :goto_31

    :catchall_1d
    move-exception v0

    goto/16 :goto_580

    :catch_20
    move-exception v0

    goto :goto_35

    .line 149
    :cond_22
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 150
    array-length v9, v0

    if-lez v9, :cond_30

    .line 151
    aget-object v0, v0, v8
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_20
    .catchall {:try_start_19 .. :try_end_2f} :catchall_1d

    goto :goto_31

    :cond_30
    move-object v0, v7

    .line 157
    :goto_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    .line 155
    :goto_35
    :try_start_35
    const-string v9, "failed to get caller pkg"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_1d

    .line 157
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v7

    .line 160
    :goto_3e
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 162
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: permission denied: callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callingPackage="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0xff

    return v0

    :cond_7f
    const/16 v5, 0x2d

    const/16 v6, 0x5f

    .line 171
    :try_start_83
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8b} :catch_b4

    const-string v9, "Invalid listener - must be a ComponentName"

    const-string v10, "Invalid assistant - must be a ComponentName"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-string v13, "1"

    const-string/jumbo v14, "true"

    const/16 v16, -0x1

    const/4 v15, 0x1

    sparse-switch v6, :sswitch_data_584

    goto/16 :goto_55b

    :sswitch_9e
    :try_start_9e
    const-string v0, "allow_assistant"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 245
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b7

    .line 247
    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    :catch_b4
    move-exception v0

    goto/16 :goto_560

    .line 250
    :cond_b7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 251
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c9

    .line 252
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 254
    :cond_c9
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v15}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_d0
    const-string/jumbo v3, "set_dnd"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55b

    .line 173
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5d6

    goto :goto_122

    :sswitch_e5
    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    goto :goto_123

    :sswitch_ef
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    goto :goto_101

    :sswitch_f9
    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    :goto_101
    move v11, v15

    goto :goto_123

    :sswitch_103
    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    goto :goto_123

    :sswitch_10d
    const-string/jumbo v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    move v11, v12

    goto :goto_123

    :sswitch_118
    const-string v3, "alarms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    const/4 v11, 0x4

    goto :goto_123

    :cond_122
    :goto_122
    move v11, v8

    .line 191
    :goto_123
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v11, v15}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_12a
    const-string/jumbo v0, "redact_otp_from_untrusted_listeners"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 440
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_145

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    goto :goto_145

    :cond_144
    move v15, v8

    .line 442
    :cond_145
    :goto_145
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "redact_otp_notifications_from_untrusted_listeners"

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_57f

    .line 171
    :sswitch_157
    const-string v0, "disallow_listener"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 231
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_16d

    .line 233
    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    .line 236
    :cond_16d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 237
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17f

    .line 238
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 240
    :cond_17f
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v8, v15}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_186
    const-string/jumbo v0, "set_exempt_th_force_grouping"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 433
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a1

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    goto :goto_1a1

    :cond_1a0
    move v15, v8

    .line 436
    :cond_1a1
    :goto_1a1
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService;->setTestHarnessExempted(Z)V

    goto/16 :goto_57f

    .line 171
    :sswitch_1a8
    const-string/jumbo v0, "reset_assistant_user_set"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 271
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 272
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c3

    .line 273
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 275
    :cond_1c3
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    goto/16 :goto_57f

    .line 171
    :sswitch_1ca
    const-string v0, "allow_dnd"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 196
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 198
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e8

    .line 199
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 201
    :cond_1e8
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v15}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_1ef
    const-string/jumbo v0, "set_bubbles"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 293
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v11, :cond_22c

    if-gez v2, :cond_209

    goto :goto_22c

    .line 300
    :cond_209
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 301
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21b

    .line 302
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 304
    :cond_21b
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 305
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v3, v2}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    goto/16 :goto_57f

    .line 296
    :cond_22c
    :goto_22c
    const-string v0, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    .line 171
    :sswitch_232
    const-string/jumbo v6, "post"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55b

    goto/16 :goto_485

    :sswitch_23d
    const-string v0, "list"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 330
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_251
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_251

    .line 171
    :sswitch_261
    const-string v0, "get"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 335
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_282

    .line 338
    const-string v0, ""

    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v4, v0, v1, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_57f

    .line 340
    :cond_282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: no active notification matching key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    .line 171
    :sswitch_297
    const-string/jumbo v0, "unsnooze"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 362
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v2, "--mute"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 365
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move v2, v15

    goto :goto_2b3

    :cond_2b2
    move v2, v8

    .line 367
    :goto_2b3
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    if-eqz v3, :cond_2d9

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsnoozing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_57f

    .line 371
    :cond_2d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: no snoozed otification matching key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    .line 171
    :sswitch_2ee
    const-string v0, "get_approved_assistant"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 279
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 280
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_308

    .line 281
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    :cond_308
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_318

    .line 285
    const-string/jumbo v0, "null"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_57f

    .line 287
    :cond_318
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_57f

    .line 171
    :sswitch_321
    const-string v0, "disallow_dnd"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 207
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 209
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33f

    .line 210
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 212
    :cond_33f
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v8}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_346
    const-string v0, "allow_listener"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 217
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_35c

    .line 219
    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    .line 222
    :cond_35c
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 223
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36e

    .line 224
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 226
    :cond_36e
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v15, v15}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_375
    const-string/jumbo v0, "snooze"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 377
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_382
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_382} :catch_b4

    .line 378
    const-string v2, "help"

    if-nez v0, :cond_388

    move-object v0, v2

    goto :goto_394

    .line 380
    :cond_388
    :try_start_388
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_394

    .line 381
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_394
    :goto_394
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_39f

    goto :goto_3a0

    :cond_39f
    move-object v2, v0

    .line 388
    :goto_3a0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-wide/16 v9, 0x0

    sparse-switch v0, :sswitch_data_5f0

    goto/16 :goto_475

    :sswitch_3ab
    const-string v0, "context"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    goto :goto_3d8

    :sswitch_3b4
    const-string v0, "criterion"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    goto :goto_3d8

    :sswitch_3bd
    const-string/jumbo v0, "until"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    goto :goto_3e3

    :sswitch_3c7
    const-string v0, "for"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    goto :goto_3e3

    :sswitch_3d0
    const-string v0, "condition"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    :goto_3d8
    move-object v0, v3

    move-wide v11, v9

    goto :goto_3e8

    :sswitch_3db
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    .line 397
    :goto_3e3
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object v0, v7

    :goto_3e8
    cmp-long v6, v11, v9

    if-gtz v6, :cond_40c

    if-eqz v0, :cond_3ef

    goto :goto_40c

    .line 427
    :cond_3ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: invalid value for --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    .line 405
    :cond_40c
    :goto_40c
    new-instance v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-direct {v2, v7}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>(Lcom/android/server/notification/NotificationShellCmd-IA;)V

    .line 406
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Landroid/content/ComponentName;

    .line 407
    const-class v9, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-virtual {v9}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 408
    const-class v10, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 406
    invoke-virtual {v2, v3, v7, v9}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 410
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationShellCmd;->waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z

    move-result v3

    if-nez v3, :cond_43b

    .line 411
    const-string v0, "error: could not bind a listener in time"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_43b
    if-lez v6, :cond_459

    .line 415
    const-string/jumbo v0, "snoozing <%s> until time: %s"

    new-instance v3, Ljava/util/Date;

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v11

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 415
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2, v5, v11, v12}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_46a

    .line 419
    :cond_459
    const-string/jumbo v3, "snoozing <%s> until criterion: %s"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2, v5, v0}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_46a
    invoke-virtual {v1, v2, v5}, Lcom/android/server/notification/NotificationShellCmd;->waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 425
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationShellCmd;->waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V

    goto/16 :goto_57f

    .line 400
    :cond_475
    :goto_475
    const-string/jumbo v0, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    .line 171
    :sswitch_47c
    const-string/jumbo v6, "notify"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55b

    .line 327
    :goto_485
    invoke-virtual {v1, v4, v0, v3}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    goto/16 :goto_57f

    .line 171
    :sswitch_48a
    const-string v0, "disallow_assistant"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 258
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4a0

    .line 260
    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    .line 263
    :cond_4a0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 264
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4b2

    .line 265
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    :cond_4b2
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v8}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_57f

    .line 171
    :sswitch_4b9
    const-string/jumbo v3, "set_bubbles_channel"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55b

    .line 310
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 313
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 314
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4e4

    .line 315
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 317
    :cond_4e4
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v7, v0, v6, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v5}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 320
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 321
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v2, v3, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto/16 :goto_57f

    .line 171
    :sswitch_4fe
    const-string/jumbo v0, "snoozed"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    .line 347
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 348
    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_513
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 349
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " snoozed, time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 352
    invoke-virtual {v0, v7, v3, v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " context="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    .line 355
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_513

    .line 448
    :cond_55b
    :goto_55b
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_55f
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_55f} :catch_b4

    return v0

    .line 451
    :goto_560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred. Check logcat for details. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v1, "NotificationService"

    const-string v2, "Error running shell command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_57f
    :goto_57f
    return v8

    .line 157
    :goto_580
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw v0

    :sswitch_data_584
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_4fe
        -0x677a47b2 -> :sswitch_4b9
        -0x4f05a8e6 -> :sswitch_48a
        -0x3df868b7 -> :sswitch_47c
        -0x3580721a -> :sswitch_375
        -0x19cf0b16 -> :sswitch_346
        -0x199eb9aa -> :sswitch_321
        -0x18b58921 -> :sswitch_2ee
        -0xa97a41 -> :sswitch_297
        0x18f56 -> :sswitch_261
        0x32b09e -> :sswitch_23d
        0x3498a0 -> :sswitch_232
        0xca4be8a -> :sswitch_1ef
        0x16318b24 -> :sswitch_1ca
        0x28bd431f -> :sswitch_1a8
        0x451d09df -> :sswitch_186
        0x4af068f8 -> :sswitch_157
        0x608f7f1b -> :sswitch_12a
        0x76556fbd -> :sswitch_d0
        0x7dcb4968 -> :sswitch_9e
    .end sparse-switch

    :sswitch_data_5d6
    .sparse-switch
        -0x545a2fbe -> :sswitch_118
        -0x4577865c -> :sswitch_10d
        0xddf -> :sswitch_103
        0x179a1 -> :sswitch_f9
        0x1ad6f -> :sswitch_ef
        0x33af38 -> :sswitch_e5
    .end sparse-switch

    :sswitch_data_5f0
    .sparse-switch
        -0x76bbb26c -> :sswitch_3db
        -0x335692e5 -> :sswitch_3d0
        0x18cc9 -> :sswitch_3c7
        0x6a47f5e -> :sswitch_3bd
        0x16e20ea1 -> :sswitch_3b4
        0x38b735af -> :sswitch_3ab
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 788
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n  set_exempt_th_force_grouping [true|false]\n  redact_otp_from_untrusted_listeners [true|false]\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 5

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    .line 469
    :cond_8
    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 472
    :cond_21
    const-string p0, "http:"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_85

    const-string p0, "https:"

    .line 473
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_85

    const-string p0, "content:"

    .line 474
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_85

    const-string p0, "file:"

    .line 475
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_85

    const-string p0, "android.resource:"

    .line 476
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4a

    goto :goto_85

    .line 479
    :cond_4a
    const-string p0, "@"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_66

    .line 480
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "drawable"

    const-string v1, "android"

    invoke-virtual {p1, p0, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_84

    .line 483
    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    .line 485
    :cond_66
    const-string p0, "data:"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_84

    const/16 p0, 0x2c

    .line 486
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 487
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 488
    array-length p2, p0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_84
    return-object v0

    .line 477
    :cond_85
    :goto_85
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 478
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    const/16 v1, 0x14

    if-ge v0, v1, :cond_20

    .line 757
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-eqz v1, :cond_13

    .line 758
    const-string p0, "NotifShellCmd"

    const-string p1, "Bound Shell NLS"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_13
    const-wide/16 v1, 0x64

    .line 762
    :try_start_15
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v1

    .line 764
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return p0
.end method

.method public final waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V
    .registers 8

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2b

    .line 740
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 741
    array-length v2, v1

    move v3, p0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 742
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_2b

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    const-wide/16 v1, 0x64

    .line 747
    :try_start_20
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v1

    .line 749
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1e

    .line 773
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-nez v0, :cond_11

    .line 774
    const-string p0, "NotifShellCmd"

    const-string p1, "Unbound Shell NLS"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-wide/16 v0, 0x64

    .line 778
    :try_start_13
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method
