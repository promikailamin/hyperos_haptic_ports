.class public Landroid/provider/CallLog$AddCallParams;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    }
.end annotation


# instance fields
.field public blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field public blacklist mAddForAllUsers:Z

.field public blacklist mCallBlockReason:I

.field public blacklist mCallScreeningAppName:Ljava/lang/CharSequence;

.field public blacklist mCallScreeningComponentName:Ljava/lang/String;

.field public blacklist mCallType:I

.field public blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field public blacklist mDataUsage:J

.field public blacklist mDuration:I

.field public blacklist mFeatures:I

.field private blacklist mIsPhoneAccountMigrationPending:I

.field public blacklist mIsRead:Z

.field public blacklist mLatitude:D

.field public blacklist mLongitude:D

.field public blacklist mMissedReason:J

.field public blacklist mNumber:Ljava/lang/String;

.field public blacklist mPictureUri:Landroid/net/Uri;

.field public blacklist mPostDialDigits:Ljava/lang/String;

.field public blacklist mPresentation:I

.field public blacklist mPriority:I

.field public blacklist mStart:J

.field public blacklist mSubject:Ljava/lang/String;

.field public blacklist mUserToBeInsertedTo:Landroid/os/UserHandle;

.field public blacklist mViaNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return p0
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V
    .registers 46
    .param p1, "callerInfo"    # Landroid/telecom/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # J
    .param p14, "addForAllUsers"    # Z
    .param p15, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p16, "isRead"    # Z
    .param p17, "callBlockReason"    # I
    .param p18, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p19, "callScreeningComponentName"    # Ljava/lang/String;
    .param p20, "missedReason"    # J
    .param p22, "priority"    # I
    .param p23, "subject"    # Ljava/lang/String;
    .param p24, "latitude"    # D
    .param p26, "longitude"    # D
    .param p28, "pictureUri"    # Landroid/net/Uri;
    .param p29, "isPhoneAccountMigrationPending"    # I

    .line 694
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 681
    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 695
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 696
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    .line 697
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    .line 698
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    .line 699
    move/from16 v5, p5

    iput v5, v0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    .line 700
    move/from16 v6, p6

    iput v6, v0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    .line 701
    move/from16 v7, p7

    iput v7, v0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    .line 702
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 703
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    .line 704
    move/from16 v11, p11

    iput v11, v0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    .line 705
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    .line 706
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    .line 707
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    .line 708
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    .line 709
    move/from16 v1, p17

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    .line 710
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    .line 711
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    .line 712
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    .line 713
    move/from16 v1, p22

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    .line 714
    move-object/from16 v2, p23

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    .line 715
    move-wide/from16 v1, p24

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 716
    move-wide/from16 v1, p26

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 717
    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    .line 718
    move/from16 v2, p29

    iput v2, v0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    .line 719
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog$AddCallParams-IA;)V
    .registers 31

    invoke-direct/range {p0 .. p29}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V

    return-void
.end method
