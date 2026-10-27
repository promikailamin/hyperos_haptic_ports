.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls$MissedReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final greylist-max-o ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final whitelist ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final whitelist AUTO_MISSED_EMERGENCY_CALL:J = 0x1L

.field public static final whitelist AUTO_MISSED_MAXIMUM_DIALING:J = 0x4L

.field public static final whitelist AUTO_MISSED_MAXIMUM_RINGING:J = 0x2L

.field public static final whitelist BLOCKED_TYPE:I = 0x6

.field public static final whitelist BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final whitelist BLOCK_REASON_BLOCKED_NUMBER:I = 0x3

.field public static final whitelist BLOCK_REASON_CALL_SCREENING_SERVICE:I = 0x1

.field public static final whitelist BLOCK_REASON_DIRECT_TO_VOICEMAIL:I = 0x2

.field public static final whitelist BLOCK_REASON_NOT_BLOCKED:I = 0x0

.field public static final whitelist BLOCK_REASON_NOT_IN_CONTACTS:I = 0x7

.field public static final whitelist BLOCK_REASON_PAY_PHONE:I = 0x6

.field public static final whitelist BLOCK_REASON_RESTRICTED_NUMBER:I = 0x5

.field public static final whitelist BLOCK_REASON_UNKNOWN_NUMBER:I = 0x4

.field public static final whitelist CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final whitelist CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final whitelist CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final whitelist CACHED_NAME:Ljava/lang/String; = "name"

.field public static final whitelist CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final whitelist CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final whitelist CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final whitelist CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final whitelist CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final whitelist CALL_SCREENING_APP_NAME:Ljava/lang/String; = "call_screening_app_name"

.field public static final whitelist CALL_SCREENING_COMPONENT_NAME:Ljava/lang/String; = "call_screening_component_name"

.field public static final whitelist COMPOSER_PHOTO_URI:Ljava/lang/String; = "composer_photo_uri"

.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final whitelist COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final whitelist DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final whitelist FEATURES:Ljava/lang/String; = "features"

.field public static final whitelist FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final whitelist FEATURES_HD_CALL:I = 0x4

.field public static final whitelist FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final whitelist FEATURES_RTT:I = 0x20

.field public static final whitelist FEATURES_VIDEO:I = 0x1

.field public static final whitelist FEATURES_VOLTE:I = 0x40

.field public static final whitelist FEATURES_WIFI:I = 0x8

.field public static final whitelist GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final whitelist INCOMING_TYPE:I = 0x1

.field public static final blacklist IS_PHONE_ACCOUNT_MIGRATION_PENDING:Ljava/lang/String; = "is_call_log_phone_account_migration_pending"

.field public static final whitelist IS_READ:Ljava/lang/String; = "is_read"

.field public static final whitelist LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final whitelist LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final whitelist LOCATION:Ljava/lang/String; = "location"

.field public static final blacklist LOW_RING_VOLUME:I = 0x0

.field private static final greylist-max-o MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final whitelist MISSED_REASON:Ljava/lang/String; = "missed_reason"

.field public static final whitelist MISSED_REASON_NOT_MISSED:J = 0x0L

.field public static final whitelist MISSED_TYPE:I = 0x3

.field public static final whitelist NEW:Ljava/lang/String; = "new"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final whitelist OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final whitelist OUTGOING_TYPE:I = 0x2

.field public static final greylist-max-o PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final greylist-max-o PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist REJECTED_TYPE:I = 0x5

.field public static final greylist-max-o SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SHORT_RING_THRESHOLD:J = 0x1388L

.field public static final whitelist SUBJECT:Ljava/lang/String; = "subject"

.field public static final greylist-max-o SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final whitelist TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final greylist-max-o TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist USER_MISSED_CALL_FILTERS_TIMEOUT:J = 0x400000L

.field public static final whitelist USER_MISSED_CALL_SCREENING_SERVICE_SILENCED:J = 0x200000L

.field public static final whitelist USER_MISSED_DND_MODE:J = 0x40000L

.field public static final whitelist USER_MISSED_LOW_RING_VOLUME:J = 0x80000L

.field public static final blacklist USER_MISSED_NEVER_RANG:J = 0x800000L

.field public static final whitelist USER_MISSED_NO_ANSWER:J = 0x10000L

.field public static final whitelist USER_MISSED_NO_VIBRATE:J = 0x100000L

.field public static final whitelist USER_MISSED_SHORT_RING:J = 0x20000L

.field public static final whitelist VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final whitelist VOICEMAIL_TYPE:I = 0x4

.field public static final whitelist VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 749
    nop

    .line 750
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 753
    nop

    .line 754
    const-string v1, "content://call_log_shadow/calls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 759
    nop

    .line 760
    const-string v1, "content://call_log/calls/filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 772
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 773
    const-string/jumbo v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 774
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 823
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 824
    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 823
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/provider/CallLog$AddCallParams;

    .line 1687
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1689
    .local v9, "resolver":Landroid/content/ContentResolver;
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v0}, Landroid/provider/CallLog$Calls;->getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v10

    .line 1691
    .local v10, "accountAddress":Ljava/lang/String;
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    iget v3, v2, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    invoke-static {v0, v3}, Landroid/provider/CallLog$Calls;->getLogNumberPresentation(Ljava/lang/String;I)I

    move-result v11

    .line 1692
    .local v11, "numberPresentation":I
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    const-string v3, ""

    if-eqz v0, :cond_23

    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v3

    .line 1693
    .local v0, "name":Ljava/lang/String;
    :goto_24
    const/4 v4, 0x1

    if-eq v11, v4, :cond_31

    .line 1694
    iput-object v3, v2, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    .line 1695
    iget-object v3, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eqz v3, :cond_31

    .line 1696
    const-string v0, ""

    move-object v12, v0

    goto :goto_32

    .line 1701
    :cond_31
    move-object v12, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    :goto_32
    const/4 v0, 0x0

    .line 1702
    .local v0, "accountComponentString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1703
    .local v3, "accountId":Ljava/lang/String;
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v5, :cond_4b

    .line 1704
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1705
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v13, v0

    move-object v14, v3

    goto :goto_4d

    .line 1703
    :cond_4b
    move-object v13, v0

    move-object v14, v3

    .line 1708
    .end local v0    # "accountComponentString":Ljava/lang/String;
    .end local v3    # "accountId":Ljava/lang/String;
    .local v13, "accountComponentString":Ljava/lang/String;
    .local v14, "accountId":Ljava/lang/String;
    :goto_4d
    new-instance v0, Landroid/content/ContentValues;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    move-object v15, v0

    .line 1710
    .local v15, "values":Landroid/content/ContentValues;
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    const-string/jumbo v3, "number"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    const-string/jumbo v3, "post_dial_digits"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    const-string/jumbo v3, "via_number"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "presentation"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    iget v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "type"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1715
    iget v0, v2, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "features"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1716
    iget-wide v5, v2, Landroid/provider/CallLog$AddCallParams;->mStart:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "date"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1717
    iget v0, v2, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "duration"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1718
    iget-wide v5, v2, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_b8

    .line 1719
    iget-wide v5, v2, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "data_usage"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1721
    :cond_b8
    const-string/jumbo v0, "subscription_component_name"

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string/jumbo v0, "subscription_id"

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string/jumbo v0, "phone_account_address"

    invoke-virtual {v15, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "new"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1725
    const-string/jumbo v0, "name"

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-boolean v0, v2, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "add_for_all_users"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1728
    iget v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_f6

    .line 1729
    iget-boolean v0, v2, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "is_read"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1732
    :cond_f6
    iget v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "block_reason"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1733
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/provider/CallLog$Calls;->charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "call_screening_app_name"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    const-string v3, "call_screening_component_name"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-wide v5, v2, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "missed_reason"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1736
    iget v0, v2, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "priority"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1737
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    const-string/jumbo v3, "subject"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    if-eqz v0, :cond_142

    .line 1739
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "composer_photo_uri"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :cond_142
    invoke-static/range {p1 .. p1}, Landroid/provider/CallLog$AddCallParams;->-$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "is_call_log_phone_account_migration_pending"

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1743
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    if-eqz v0, :cond_20c

    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v0}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_20c

    .line 1752
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v0, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v8, 0x2

    const-string v3, "_id"

    const/4 v7, 0x0

    if-eqz v0, :cond_198

    .line 1753
    iget-object v0, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v0, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1754
    .local v0, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    new-array v3, v8, [Ljava/lang/String;

    iget-object v8, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 1757
    invoke-virtual {v8}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    aput-object v0, v3, v4

    const/4 v8, 0x0

    .line 1754
    const-string v17, "contact_id =? AND data4 =?"

    move-object/from16 v18, v3

    move-object v3, v9

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v0

    move v0, v7

    .end local v0    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v17, "normalizedPhoneNumber":Ljava/lang/String;
    move-object/from16 v7, v18

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1760
    .end local v17    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v3, "cursor":Landroid/database/Cursor;
    goto :goto_1d4

    .line 1761
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_198
    move v0, v7

    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v5}, Landroid/telecom/CallerInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a8

    .line 1762
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    invoke-virtual {v5}, Landroid/telecom/CallerInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_1aa

    :cond_1a8
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    :goto_1aa
    move-object/from16 v16, v5

    .line 1763
    .local v16, "phoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1765
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1764
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    iget-object v3, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 1768
    invoke-virtual {v3}, Landroid/telecom/CallerInfo;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v8, 0x0

    .line 1763
    const-string v17, "contact_id =?"

    move-object v3, v9

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1772
    .end local v16    # "phoneNumber":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :goto_1d4
    if-eqz v3, :cond_20c

    .line 1774
    :try_start_1d6
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_203

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_203

    .line 1775
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1776
    .local v0, "dataId":Ljava/lang/String;
    invoke-static {v9, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1777
    iget v4, v2, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_203

    iget v4, v2, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_203

    iget-object v4, v2, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v4, v4, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 1779
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_203

    .line 1780
    iget-object v4, v2, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    invoke-static {v1, v9, v0, v4}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_203
    .catchall {:try_start_1d6 .. :try_end_203} :catchall_207

    .line 1784
    .end local v0    # "dataId":Ljava/lang/String;
    :cond_203
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1785
    goto :goto_20c

    .line 1784
    :catchall_207
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1785
    throw v0

    .line 1811
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_20c
    :goto_20c
    const/4 v0, 0x0

    .line 1813
    .local v0, "result":Landroid/net/Uri;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1814
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v4

    .line 1816
    .local v4, "currentUserId":I
    iget-boolean v5, v2, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    const-string/jumbo v7, "location"

    if-eqz v5, :cond_2d2

    .line 1817
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_237

    .line 1822
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v9, v5}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v5

    .line 1823
    .local v5, "locationUri":Landroid/net/Uri;
    if-eqz v5, :cond_237

    .line 1824
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    .end local v5    # "locationUri":Landroid/net/Uri;
    :cond_237
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v5, v15}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1831
    .local v5, "uriForSystem":Landroid/net/Uri;
    if-eqz v5, :cond_2ce

    .line 1832
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const-string v6, "call_log_shadow"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24f

    move-object/from16 v19, v5

    goto/16 :goto_2d0

    .line 1838
    :cond_24f
    if-nez v4, :cond_252

    .line 1839
    move-object v0, v5

    .line 1844
    :cond_252
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v6

    .line 1846
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 1847
    .local v8, "count":I
    const/16 v17, 0x0

    move/from16 v23, v17

    move-object/from16 v17, v0

    move/from16 v0, v23

    .local v0, "i":I
    .local v17, "result":Landroid/net/Uri;
    :goto_262
    if-ge v0, v8, :cond_2c5

    .line 1848
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 1849
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v19, v5

    .end local v5    # "uriForSystem":Landroid/net/Uri;
    .local v19, "uriForSystem":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 1850
    .local v5, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v20, v6

    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1852
    .local v6, "userId":I
    invoke-virtual {v5}, Landroid/os/UserHandle;->isSystem()Z

    move-result v21

    if-eqz v21, :cond_27f

    .line 1854
    move/from16 v22, v8

    goto :goto_2bc

    .line 1857
    :cond_27f
    invoke-static {v1, v3, v6}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v21

    if-nez v21, :cond_288

    .line 1859
    move/from16 v22, v8

    goto :goto_2bc

    .line 1865
    :cond_288
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_2ba

    .line 1866
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_2b7

    .line 1867
    invoke-static {v2, v9, v5}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v21

    .line 1868
    .local v21, "locationUri":Landroid/net/Uri;
    if-eqz v21, :cond_2a4

    .line 1869
    move/from16 v22, v8

    .end local v8    # "count":I
    .local v22, "count":I
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ae

    .line 1871
    .end local v22    # "count":I
    .restart local v8    # "count":I
    :cond_2a4
    move/from16 v22, v8

    .end local v8    # "count":I
    .restart local v22    # "count":I
    const/4 v8, 0x0

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    :goto_2ae
    invoke-static {v1, v3, v5, v15}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1875
    .local v8, "uri":Landroid/net/Uri;
    if-ne v6, v4, :cond_2bc

    .line 1876
    move-object/from16 v17, v8

    goto :goto_2bc

    .line 1866
    .end local v21    # "locationUri":Landroid/net/Uri;
    .end local v22    # "count":I
    .local v8, "count":I
    :cond_2b7
    move/from16 v22, v8

    .end local v8    # "count":I
    .restart local v22    # "count":I
    goto :goto_2bc

    .line 1865
    .end local v22    # "count":I
    .restart local v8    # "count":I
    :cond_2ba
    move/from16 v22, v8

    .line 1847
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "userId":I
    .end local v8    # "count":I
    .end local v18    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "count":I
    :cond_2bc
    :goto_2bc
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v8, v22

    goto :goto_262

    .end local v19    # "uriForSystem":Landroid/net/Uri;
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v22    # "count":I
    .local v5, "uriForSystem":Landroid/net/Uri;
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "count":I
    :cond_2c5
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v22, v8

    .line 1880
    .end local v0    # "i":I
    .end local v5    # "uriForSystem":Landroid/net/Uri;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "count":I
    move-object/from16 v0, v17

    goto :goto_304

    .line 1831
    .end local v17    # "result":Landroid/net/Uri;
    .local v0, "result":Landroid/net/Uri;
    .restart local v5    # "uriForSystem":Landroid/net/Uri;
    :cond_2ce
    move-object/from16 v19, v5

    .line 1836
    .end local v5    # "uriForSystem":Landroid/net/Uri;
    .restart local v19    # "uriForSystem":Landroid/net/Uri;
    :goto_2d0
    const/4 v5, 0x0

    return-object v5

    .line 1883
    .end local v19    # "uriForSystem":Landroid/net/Uri;
    :cond_2d2
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    if-eqz v5, :cond_2d9

    .line 1884
    iget-object v5, v2, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    goto :goto_2dd

    .line 1885
    :cond_2d9
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    :goto_2dd
    nop

    .line 1887
    .local v5, "targetUserHandle":Landroid/os/UserHandle;
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_300

    .line 1888
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_300

    .line 1889
    invoke-static {v2, v9, v5}, Landroid/provider/CallLog$Calls;->maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v6

    .line 1890
    .local v6, "locationUri":Landroid/net/Uri;
    if-eqz v6, :cond_2f8

    .line 1891
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_300

    .line 1893
    :cond_2f8
    const/4 v8, 0x0

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    .end local v6    # "locationUri":Landroid/net/Uri;
    :cond_300
    :goto_300
    invoke-static {v1, v3, v5, v15}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1900
    .end local v5    # "targetUserHandle":Landroid/os/UserHandle;
    :goto_304
    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;JI)Landroid/net/Uri;
    .registers 36
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "missedReason"    # J
    .param p13, "isPhoneAccountMigrationPending"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-wide/from16 v19, p11

    move/from16 v21, p13

    .line 1550
    const-string v3, ""

    const-string v4, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v0 .. v21}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;JI)Landroid/net/Uri;
    .registers 40
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "missedReason"    # J
    .param p17, "isPhoneAccountMigrationPending"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v19, p15

    move/from16 v21, p17

    .line 1593
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v0 .. v21}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JI)Landroid/net/Uri;
    .registers 39
    .param p0, "ci"    # Landroid/telecom/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # Ljava/lang/Long;
    .param p13, "addForAllUsers"    # Z
    .param p14, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p15, "isRead"    # Z
    .param p16, "callBlockReason"    # I
    .param p17, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p18, "callScreeningComponentName"    # Ljava/lang/String;
    .param p19, "missedReason"    # J
    .param p21, "isPhoneAccountMigrationPending"    # I

    .line 1649
    new-instance v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    invoke-direct {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;-><init>()V

    .line 1651
    .local v0, "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1652
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1653
    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1654
    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1655
    move/from16 v5, p5

    invoke-virtual {v0, v5}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1656
    move/from16 v6, p6

    invoke-virtual {v0, v6}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1657
    move/from16 v7, p7

    invoke-virtual {v0, v7}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1658
    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1659
    move-wide/from16 v9, p9

    invoke-virtual {v0, v9, v10}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1660
    move/from16 v11, p11

    invoke-virtual {v0, v11}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1661
    if-nez p12, :cond_3c

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_40

    :cond_3c
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_40
    invoke-virtual {v0, v12, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1662
    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1663
    move-object/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1664
    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1665
    move/from16 v15, p16

    invoke-virtual {v0, v15}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1666
    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1667
    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1668
    move-wide/from16 v1, p19

    invoke-virtual {v0, v1, v2}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1669
    move/from16 v1, p21

    invoke-virtual {v0, v1}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;

    .line 1671
    invoke-virtual {v0}, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->build()Landroid/provider/CallLog$AddCallParams;

    move-result-object v2

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .local v16, "builder":Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    invoke-static {v0, v2}, Landroid/provider/CallLog$Calls;->addCall(Landroid/content/Context;Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 1945
    const-string/jumbo v0, "subscription_component_name"

    const-string/jumbo v1, "subscription_id"

    const-string v2, "CallLog"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1950
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_17

    :cond_15
    sget-object v4, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 1951
    :goto_17
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1949
    invoke-static {v4, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 1964
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    :try_start_20
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1965
    .local v6, "result":Landroid/net/Uri;
    if-eqz v6, :cond_4b

    .line 1966
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 1974
    .local v7, "lastPathSegment":Ljava/lang/String;
    if-eqz v7, :cond_4a

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1975
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to insert into call log due to appops denial; resultUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    .end local v7    # "lastPathSegment":Ljava/lang/String;
    :cond_4a
    goto :goto_50

    .line 1979
    :cond_4b
    const-string v7, "Failed to insert into call log; null result uri."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :goto_50
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1983
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    .line 1984
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1985
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    .line 1987
    const-string v7, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 1993
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    .line 1994
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 1987
    invoke-virtual {v3, v4, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8c

    .line 1998
    :cond_87
    const-string v0, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_8c} :catch_8d

    .line 2003
    :goto_8c
    return-object v6

    .line 2004
    .end local v6    # "result":Landroid/net/Uri;
    :catch_8d
    move-exception v0

    .line 2005
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Failed to insert calllog"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2009
    return-object v5
.end method

.method private static blacklist charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 1904
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private static greylist-max-o getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2118
    const/4 v0, 0x0

    .line 2119
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2121
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_15

    .line 2122
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 2123
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_15

    .line 2124
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2127
    .end local v2    # "country":Landroid/location/Country;
    :cond_15
    return-object v0
.end method

.method public static whitelist getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 1925
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1926
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1928
    .local v7, "c":Landroid/database/Cursor;
    :try_start_5
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    const-string/jumbo v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 1934
    if-eqz v7, :cond_2e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_2e

    .line 1937
    :cond_23
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_36

    .line 1939
    if-eqz v7, :cond_2d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_2d
    return-object v0

    .line 1935
    :cond_2e
    :goto_2e
    :try_start_2e
    const-string v0, ""
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_36

    .line 1939
    if-eqz v7, :cond_35

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1935
    :cond_35
    return-object v0

    .line 1939
    :catchall_36
    move-exception v0

    if-eqz v7, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1940
    :cond_3c
    throw v0
.end method

.method private static blacklist getLogAccountAddress(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2095
    const/4 v0, 0x0

    .line 2097
    .local v0, "tm":Landroid/telecom/TelecomManager;
    :try_start_1
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 2102
    goto :goto_8

    .line 2098
    :catch_7
    move-exception v1

    .line 2104
    :goto_8
    const/4 v1, 0x0

    .line 2105
    .local v1, "accountAddress":Ljava/lang/String;
    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 2106
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 2107
    .local v2, "account":Landroid/telecom/PhoneAccount;
    if-eqz v2, :cond_1d

    .line 2108
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    .line 2109
    .local v3, "address":Landroid/net/Uri;
    if-eqz v3, :cond_1d

    .line 2110
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2114
    .end local v2    # "account":Landroid/telecom/PhoneAccount;
    .end local v3    # "address":Landroid/net/Uri;
    :cond_1d
    return-object v1
.end method

.method private static blacklist getLogNumberPresentation(Ljava/lang/String;I)I
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "presentation"    # I

    .line 2073
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 2074
    return p1

    .line 2077
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 2078
    return p1

    .line 2081
    :cond_8
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 2082
    return v0

    .line 2085
    :cond_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_18

    if-ne p1, v1, :cond_16

    goto :goto_18

    .line 2090
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 2087
    :cond_18
    :goto_18
    return v1
.end method

.method public static blacklist isUserMissed(J)Z
    .registers 4
    .param p0, "missedReason"    # J

    .line 2141
    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist maybeInsertLocation(Landroid/provider/CallLog$AddCallParams;Landroid/content/ContentResolver;Landroid/os/UserHandle;)Landroid/net/Uri;
    .registers 9
    .param p0, "params"    # Landroid/provider/CallLog$AddCallParams;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2015
    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    iget-wide v2, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_47

    .line 2018
    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2019
    .local v0, "locationValues":Landroid/content/ContentValues;
    iget-wide v2, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2020
    iget-wide v2, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2021
    sget-object v2, Landroid/provider/CallLog$Locations;->CONTENT_URI:Landroid/net/Uri;

    .line 2022
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2021
    invoke-static {v2, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 2024
    .local v2, "locationUri":Landroid/net/Uri;
    :try_start_39
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_3d} :catch_3e

    return-object v1

    .line 2025
    :catch_3e
    move-exception v3

    .line 2028
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "CallLog"

    const-string v5, "Skipping inserting location because caller lacks ACCESS_FINE_LOCATION."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    return-object v1

    .line 2016
    .end local v0    # "locationValues":Landroid/content/ContentValues;
    .end local v2    # "locationUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_47
    :goto_47
    return-object v1
.end method

.method public static greylist-max-o shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 1910
    nop

    .line 1911
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1910
    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p1, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1912
    return v1

    .line 1914
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1915
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method private static greylist-max-o updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .line 2035
    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2036
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2037
    const-string/jumbo v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2039
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2040
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2041
    return-void
.end method

.method private static greylist-max-o updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 2049
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3b

    .line 2052
    :cond_d
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2053
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2054
    return-void

    .line 2056
    :cond_18
    invoke-static {p3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2057
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2058
    return-void

    .line 2060
    :cond_23
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2061
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string v5, "_id=?"

    invoke-virtual {p1, v3, v2, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2063
    return-void

    .line 2050
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v1    # "normalizedNumber":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_3b
    :goto_3b
    return-void
.end method
